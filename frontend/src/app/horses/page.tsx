import Link from "next/link";
import { redirect } from "next/navigation";
import { connection } from "next/server";
import { Suspense } from "react";
import {
  ancestorDetails, ancestorLineage, horseDetails, horsePickups, horseSiblings, HorseDataError, historyFilterKeys, sireSearch,
  isHorseId, pedigreeForHorse, raceDetails, searchHorses,
  type Ancestor, type HistoryFilters, type Line, type PedigreeSlot, type PickupHorse, type Pickups, type Relation, type Result, type SireHit,
} from "@/lib/data-center";
import { createClient } from "@/lib/supabase/server";
import styles from "./horses.module.css";
import { AnalysisView } from "./horse-analysis";

type Params = Record<string, string | string[] | undefined>;
const value = (field: Params[string]) => typeof field === "string" ? field : "";
const venues: Record<string, string> = {
  "01": "札幌", "02": "函館", "03": "福島", "04": "新潟", "05": "東京",
  "06": "中山", "07": "中京", "08": "京都", "09": "阪神", "10": "小倉",
};
const surfaces = { turf: "芝", dirt: "ダート", jump: "障害", sand: "サンド" };
const sexes: Record<string, string> = { "1": "牡", "2": "牝", "3": "セン" };
const statuses: Record<string, string> = {
  "1": "取消", "2": "発走除外", "3": "競走除外", "4": "中止", "5": "失格",
  "6": "再騎乗", "7": "降着",
};
function url(params: Record<string, string | number>) {
  return "/horses?" + new URLSearchParams(Object.entries(params).map(([k,v]) => [k,String(v)]));
}
function ancestorLabel(horse: Ancestor) {
  return horse.name || horse.breeding_id || "収録なし";
}
function ancestryPath(path: string) {
  return Array.from(path, (letter) => letter === "S" ? "父" : "母").join(" → ");
}
function racehorseStatus(ancestor: Ancestor) {
  const link = ancestor.racehorse;
  if (link?.status === "unique" && link.horse_id) {
    return <Link prefetch={false} href={url({horse:link.horse_id})}>競走馬 {link.horse_id}</Link>;
  }
  return link?.status === "ambiguous" ? "対応未確認（複数の繁殖登録番号）" : "競走馬IDは未確認";
}

function ancestorName(ancestor: Ancestor, context: Record<string, string> = {}) {
  if (!ancestor.breeding_id) return "収録なし";
  return <Link prefetch={false} href={url({...context,ancestor:ancestor.breeding_id})}>{ancestorLabel(ancestor)}</Link>;
}

function placing(row: Result) {
  const rank = row.finish_position === null ? "" : String(row.finish_position) + "着";
  return [rank,statuses[row.abnormal_code],row.dead_heat ? "同着" : ""].filter(Boolean).join("・") || "—";
}

function Pagination({ params, offset, next }: {
  params: Record<string,string>; offset: number; next: number | null;
}) {
  if (!offset && next === null) return null;
  return <nav className={styles.pagination} aria-label="検索結果のページ">
    {offset > 0 && <Link prefetch={false} href={url({...params,offset:Math.max(0,offset-30)})}>前のページ</Link>}
    {next !== null && <Link prefetch={false} href={url({...params,offset:next})}>次のページ</Link>}
  </nav>;
}

function Pedigree({ horse, slots, recorded }: { horse: string; slots: PedigreeSlot[]; recorded: PedigreeSlot[] }) {
  const byPath = new Map(slots.map((row) => [row.path,row]));
  const direct = new Map(recorded.map((row) => [row.path,row]));
  const generations = Array.from({ length: 5 }, (_, index) => {
    const depth = index + 1;
    return Array.from({ length: 2 ** depth }, (_, slot) =>
      slot.toString(2).padStart(depth,"0").replaceAll("0","S").replaceAll("1","D"));
  });
  const renderGeneration = (generation: string[], index: number) => <section key={index}>
    <h3>{index+1}代</h3>
    <ul>{generation.map((path) => {
      const row = byPath.get(path);
      const alternative = direct.get(path);
      return <li key={path}>
        <small>{ancestryPath(path)}</small>
        <span>{row ? ancestorName(row,{from:horse,ancestry:path}) : "収録なし"}</span>
        {row?.breeding_id && <small>繁殖登録番号 {row.breeding_id} · {racehorseStatus(row)}</small>}
        {alternative?.breeding_id && alternative.breeding_id !== row?.breeding_id &&
          <small>馬マスタ（UM）記載 {ancestorName(alternative,{from:horse,ancestry:path})}
            {" · "}{alternative.breeding_id} · {racehorseStatus(alternative)}</small>}
      </li>;
    })}</ul>
  </section>;
  return <div className={styles.tableScroll} tabIndex={0} role="region" aria-label="5世代血統">
    <div className={`${styles.generations} ${styles.gen2}`}>
      {generations.slice(0, 2).map((generation, index) => renderGeneration(generation, index))}
    </div>
    <details className={styles.pedigreeMore}>
      <summary>3代以降の血統を表示（3代・4代・5代）</summary>
      <div className={`${styles.generations} ${styles.gen3}`}>
        {generations.slice(2).map((generation, index) => renderGeneration(generation, index + 2))}
      </div>
    </details>
  </div>;
}

function ResultsTable({ rows, horseId, historyOffset, filters }: {
  rows: Result[]; horseId?: string; historyOffset?: number; filters?: HistoryFilters;
}) {
  if (!rows.length) return <p>該当する出走・結果はありません。</p>;
  return <div className={styles.tableScroll} tabIndex={0} role="region" aria-label={horseId ? "出走履歴一覧" : "レース結果一覧"}>
    <table className={horseId ? styles.historyTable : undefined}>
      <thead><tr><th scope="col">{horseId ? "レース" : "馬名"}</th><th scope="col">馬番</th>
        <th scope="col">着順・状態</th><th scope="col">騎手</th></tr></thead>
      <tbody>{rows.map((row) => <tr key={row.race_id+"-"+row.horse_number+"-"+row.horse_id}>
        <td>{horseId
          ? <><small>{row.race_date} · {venues[row.race_id.slice(8,10)] ?? row.race_id.slice(8,10)}</small>
            <Link prefetch={false} href={url({...filters,race:row.race_id,from:horseId,historyOffset:historyOffset ?? 0})}>
              {row.race_name || Number(row.race_id.slice(14))+"R"}</Link>
            {(row.surface || row.distance_m) && <small>
              {[row.surface && surfaces[row.surface], row.distance_m && row.distance_m + "m"].filter(Boolean).join(" · ")}
            </small>}</>
          : <Link prefetch={false} href={url({horse:row.horse_id})}>{row.horse_name_at_race || row.horse_id}</Link>}</td>
        <td>{row.horse_number}</td><td>{placing(row)}</td><td>{row.jockey_name || "—"}</td>
      </tr>)}</tbody>
    </table>
  </div>;
}

function HistoryForm({ id, filters }: { id: string; filters: HistoryFilters }) {
  return <form action="/horses" className={styles.filters} aria-label="出走履歴の絞り込み">
    <input type="hidden" name="horse" value={id}/>
    <label>開催年
      <input name="year" type="number" inputMode="numeric" min={1000} max={9999} defaultValue={filters.year}/>
    </label>
    <label>競馬場
      <select name="venue" defaultValue={filters.venue ?? ""}>
        <option value="">すべて</option>
        {Object.entries(venues).map(([code,name]) => <option value={code} key={code}>{name}</option>)}
      </select>
    </label>
    <label>距離（m）
      <input name="distance" type="number" inputMode="numeric" min={1} max={9999} defaultValue={filters.distance}/>
    </label>
    <label>芝・ダート
      <select name="surface" defaultValue={filters.surface ?? ""}>
        <option value="">すべて</option>
        <option value="turf">芝</option>
        <option value="dirt">ダート</option>
      </select>
    </label>
    <label>着順
      <input name="rank" type="number" inputMode="numeric" min={1} max={99} defaultValue={filters.rank}/>
    </label>
    <label>開催日順
      <select name="sort" defaultValue={filters.sort ?? "desc"}>
        <option value="desc">新しい順</option>
        <option value="asc">古い順</option>
      </select>
    </label>
    <div className={styles.filterActions}>
      <button type="submit">絞り込む</button>
      <Link prefetch={false} href={url({horse:id})}>条件をクリア</Link>
    </div>
  </form>;
}

async function HorseView({ id, offset, filters }: { id: string; offset: number; filters: HistoryFilters }) {
  const { horse, parents, pedigree, history } = await horseDetails(id,offset,filters);
  const hasPedigree = pedigree?.linked_hn.some(row => row.breeding_id)
    || pedigree?.recorded_um.some(row => row.breeding_id);
  return <>
    <section className={styles.panel}>
      <h2>{horse.name}</h2>
      <p className={styles.muted}>{horse.horse_id} · {sexes[horse.sex_code] ?? "性別未収録"} · {horse.birth_date || "生年月日未収録"}</p>
      {parents && <dl className={styles.facts}>
        <div><dt>父</dt><dd>{ancestorLabel(parents.sire_id)}</dd></div>
        <div><dt>母</dt><dd>{ancestorLabel(parents.dam_id)}</dd></div>
        <div><dt>母父（母の繁殖馬マスタ / HN）</dt><dd>{ancestorLabel(parents.damsire_hn_id)}</dd></div>
        {parents.damsire_um_id.breeding_id !== parents.damsire_hn_id.breeding_id &&
          <div><dt>母父（馬マスタ / UM）</dt><dd>{ancestorLabel(parents.damsire_um_id)}</dd></div>}
      </dl>}
    </section>
    <section className={styles.panel}>
      <h2>5世代血統</h2>
      {hasPedigree && pedigree
        ? <Pedigree horse={id} slots={pedigree.linked_hn} recorded={pedigree.recorded_um}/>
        : <p>血統情報は収録されていません。</p>}
      <div className={styles.ancestryActions}>
        {parents?.sire_id.breeding_id && <Link prefetch={false} href={url({
          ancestor:parents.sire_id.breeding_id,from:id,ancestry:"S",line:"sire",
        })}>父系をたどる</Link>}
        {parents?.dam_id.breeding_id && <Link prefetch={false} href={url({
          ancestor:parents.dam_id.breeding_id,from:id,ancestry:"D",line:"dam",
        })}>母系をたどる</Link>}
        <Link prefetch={false} href={url({siblings:id,relation:"full"})}>兄弟馬・半兄弟馬を探す</Link>
        <Link prefetch={false} href={url({analysis:id})}>血統・条件別成績を分析</Link>
      </div>
    </section>
    <section className={styles.panel}>
      <h2>全出走履歴</h2>
      <HistoryForm id={id} filters={filters}/>
      <p>{history.total.toLocaleString("ja-JP")}件
        {history.items.length > 0 && `（${offset + 1}～${offset + history.items.length}件を表示）`}
      </p>
      {history.history_total === 0 ? <p>出走履歴は収録されていません。</p>
        : history.total === 0 ? <p>指定した条件に一致する出走履歴はありません。</p>
        : <ResultsTable rows={history.items} horseId={id} historyOffset={offset} filters={filters}/>}
      <Pagination params={{...filters,horse:id}} offset={offset} next={history.next_offset}/>
    </section>
  </>;
}

const lineageStops = {
  depth_limit: "表示上限に達しました。",
  cycle: "同じ繁殖登録番号への循環を検出したため、ここで停止しました。",
  missing_parent: "この先の親の繁殖登録番号は収録されていません。",
  missing_reference: "この繁殖登録番号の参照先は未確認です。",
};
const siblingLabels = { full: "全兄弟", maternal: "母系半兄弟", paternal: "父系半兄弟" };

async function AncestorView({ id, from, ancestry, line, depth }: {
  id: string; from: string; ancestry: string; line: Line; depth: number;
}) {
  if (!isHorseId(id)) throw new HorseDataError("繁殖登録番号は半角数字10桁で入力してください。");
  const reference = isHorseId(from) && /^[SD]{1,5}$/.test(ancestry);
  const [ancestor, chain, pedigree] = await Promise.all([
    ancestorDetails(id), ancestorLineage(id,line,depth), reference ? pedigreeForHorse(from) : null,
  ]);
  const related = pedigree && [
    ...pedigree.linked_hn.filter(row => row.path === ancestry && row.breeding_id === id).map(() => "HN連結"),
    ...pedigree.recorded_um.filter(row => row.path === ancestry && row.breeding_id === id).map(() => "UM記載"),
  ];
  const context: Record<string, string> = related?.length ? {from,ancestry} : {};
  return <section className={styles.panel}>
    {related?.length ? <p><Link prefetch={false} href={url({horse:from})}>元の馬へ戻る</Link>
      {" · "}{ancestryPath(ancestry)}（{related.join("・")}）</p> : null}
    <h2>{ancestor.name || "祖先の詳細は未確認"}</h2>
    <p>繁殖登録番号 {id}{ancestor.birth_year ? " · "+ancestor.birth_year+"年生" : ""}</p>
    <p>{racehorseStatus(ancestor)}</p>
    {ancestor.resolved && <dl className={styles.facts}>
      {([[ "父", ancestor.sire_id ],[ "母", ancestor.dam_id ]] as const).map(([label,key]) =>
        <div key={label}><dt>{label}</dt><dd>{key
          ? <Link prefetch={false} href={url({ancestor:key,line})}>{key}</Link> : "収録なし"}</dd></div>)}
    </dl>}
    <nav className={styles.ancestryActions} aria-label="系統の選択">
      {(["sire","dam"] as const).map(side => <Link prefetch={false} key={side}
        aria-current={side === line ? "page" : undefined}
        href={url({...context,ancestor:id,line:side})}>{side === "sire" ? "父系" : "母系"}</Link>)}
    </nav>
    <h3>{line === "sire" ? "父系" : "母系"}の祖先（繁殖馬マスタ / HN）</h3>
    <ol className={styles.lineage}>
      {chain.items.map(row => <li key={row.generation}>
        <span>{row.generation === 0 ? "起点" : `${row.generation}代前（${line === "sire" ? "父" : "母"}系）`}</span>
        <strong>{row.generation === 0 ? ancestorLabel(row) : ancestorName(row,{line})}</strong>
        <small>{row.breeding_id ?? "収録なし"} · {racehorseStatus(row)}</small>
      </li>)}
    </ol>
    <p>{lineageStops[chain.stop_reason]}</p>
    {chain.stop_reason === "depth_limit" && depth < 32 &&
      <Link prefetch={false} href={url({...context,ancestor:id,line,depth:32})}>32代まで表示</Link>}
  </section>;
}

async function SiblingsView({id,relation,offset}: {id:string; relation:Relation; offset:number}) {
  if (!isHorseId(id)) throw new HorseDataError("馬IDは半角数字10桁で入力してください。");
  const data = await horseSiblings(id,relation,offset);
  return <section className={styles.panel}>
    <Link prefetch={false} href={url({horse:id})}>元の馬へ戻る</Link>
    <h2>兄弟馬・半兄弟馬</h2>
    <nav className={styles.ancestryActions} aria-label="兄弟馬の関係">
      {(Object.entries(siblingLabels) as [Relation,string][]).map(([key,label]) =>
        <Link prefetch={false} key={key} aria-current={key === relation ? "page" : undefined}
          href={url({siblings:id,relation:key})}>{label}</Link>)}
    </nav>
    {data.status === "unconfirmed" ? <p>父母の対応が未確認のため、兄弟関係は表示できません。</p> : <>
      <p>{data.total.toLocaleString("ja-JP")}頭
        {data.items.length > 0 && `（${offset + 1}～${offset + data.items.length}頭を表示）`}
      </p>
      <p className={styles.muted}>父母を確認できた馬の、DATA CENTER収録成績です。</p>
      {data.total > 0 ? <ul className={styles.siblingList}>
        {data.items.map(row => <li key={row.horse_id}>
          <div><Link prefetch={false} href={url({horse:row.horse_id})}>{row.name}</Link>
            <small> {row.horse_id} · {row.birth_date?.slice(0,4) || "生年未収録"}</small></div>
          <span>父 {ancestorName({breeding_id:row.sire_id,name:row.sire_name,resolved:true})}
            {" · 母 "}{ancestorName({breeding_id:row.dam_id,name:row.dam_name,resolved:true})}</span>
          <span>{row.starts}走 · {row.wins}勝
            {row.named_win && <> · 直近の名称付き勝利 <Link prefetch={false}
              href={url({race:row.named_win.race_id})}>{row.named_win.name}</Link></>}</span>
        </li>)}
      </ul> : <p>該当する兄弟馬は収録されていません。</p>}
      <Pagination params={{siblings:id,relation}} offset={offset} next={data.next_offset}/>
    </>}
  </section>;
}

async function RaceView({ id, offset, from, historyOffset, filters }: {
  id: string; offset: number; from: string; historyOffset: number; filters: HistoryFilters;
}) {
  const { race, results } = await raceDetails(id,offset);
  return <section className={styles.panel}>
    {isHorseId(from) && <Link prefetch={false} href={url({...filters,horse:from,offset:historyOffset})}>出走履歴へ戻る</Link>}
    <h2>{race.name || Number(race.race_number)+"R"}</h2>
    <p className={styles.muted}>{race.race_date} · {venues[race.venue_code] ?? race.venue_code} {Number(race.race_number)}R
      {race.distance_m ? " · "+race.distance_m+"m" : ""}{race.starters ? " · "+race.starters+"頭" : ""}</p>
    <h3>レース結果</h3>
    <ResultsTable rows={results.items}/>
    <Pagination params={{...filters,race:id,from,historyOffset:String(historyOffset)}} offset={offset} next={results.next_offset}/>
  </section>;
}

async function SearchResults({ q, offset }: { q: string; offset: number }) {
  if (!q) return null;
  if (q.length>64) throw new HorseDataError("検索語は64文字以内で入力してください。");
  const results = await searchHorses(q,offset);
  return <section className={styles.panel}>
    <h2>検索結果</h2>
    {!results.items.length ? <p>{offset === 0 && isHorseId(q.normalize("NFKC"))
        ? "指定した馬IDは登録されていません。" : "該当する馬は見つかりませんでした。"}</p> : <ul className={styles.matches}>
      {results.items.map((horse) => <li key={horse.horse_id}>
        <Link prefetch={false} href={url({horse:horse.horse_id})}>{horse.name}</Link>
        <span>{horse.horse_id} · {sexes[horse.sex_code] ?? "—"} · {horse.birth_date || "—"}</span>
      </li>)}
    </ul>}
    <Pagination params={{q}} offset={offset} next={results.next_offset}/>
  </section>;
}


function pickupLine(h: PickupHorse) {
  return `${h.starts}戦${h.wins}勝・3着以内${h.top3}回${h.g1_wins ? `・G1 ${h.g1_wins}勝` : ""}`;
}

function pickupList(horses: PickupHorse[]) {
  return <ul className={styles.siblingList}>
    {horses.map(h => <li key={h.horse_id}>
      <div><Link prefetch={false} href={url({horse:h.horse_id})}>{h.name}</Link>
        <small> {h.birth_year}年生まれ</small></div>
      <span>{pickupLine(h)}</span>
    </li>)}
  </ul>;
}

async function HomeView({ tab }: { tab: string }) {
  const tabs = [
    { key: "all", label: "歴代の強豪" },
    { key: "recent", label: "直近5年の名馬" },
    { key: "gen", label: "世代別エース" },
    { key: "dark", label: "伏兵ピックアップ" },
  ];
  const active = tabs.some(t => t.key === tab) ? tab : "all";
  let data: Pickups | null = null;
  try {
    data = await horsePickups();
  } catch {
    data = null;
  }
  const pickRandom = (arr: PickupHorse[], n: number) => {
    const copy = [...arr];
    for (let i = copy.length - 1; i > 0; i--) {
      const j = Math.floor(Math.random() * (i + 1));
      [copy[i], copy[j]] = [copy[j], copy[i]];
    }
    return copy.slice(0, n);
  };
  const spot = data && data.spotlight_pool.length
    ? data.spotlight_pool[Math.floor(Math.random() * data.spotlight_pool.length)]
    : null;
  const allList = data ? pickRandom(data.all_time_pool, 10) : [];
  return <>
    {spot && data && <section className={styles.panel}>
      <h2>今日のピックアップ</h2>
      <p className={styles.spotName}><Link prefetch={false} href={url({horse:spot.horse_id})}>{spot.name}</Link>
        <span className={styles.muted}> {spot.birth_year}年生まれ</span></p>
      <p>{pickupLine(spot)}</p>
      {spot.comment && <p className={styles.spotComment}>{spot.comment}</p>}
      <p className={styles.muted}>歴代勝利数ベスト50からランダム表示（{data.as_of}時点の集計）</p>
    </section>}
    <section className={styles.panel}>
      <h2>血統検索</h2>
      <p className={styles.muted}>父・母父の名前で検索すると、その産駒を勝利数順に表示します。</p>
      <form action="/horses" className={styles.search} role="search">
        <label htmlFor="sire-q">父・母父の名前（部分一致）</label>
        <div><input id="sire-q" name="sire" type="search" maxLength={64} required placeholder="例：ディープインパクト"/>
          <button type="submit">産駒を検索</button></div>
      </form>
    </section>
    <section className={styles.panel}>
      <h2>強馬ランキング</h2>
      <nav className={styles.ancestryActions} aria-label="ランキングの切り替え">
        {tabs.map(t => <Link prefetch={false} key={t.key} aria-current={t.key === active ? "page" : undefined}
          href={url({tab:t.key})}>{t.label}</Link>)}
      </nav>
      {!data ? <p className={styles.muted}>ピックアップ情報を取得できませんでした。PCのDATA CENTERが起動しているときに表示されます。</p>
      : active === "gen" ? <ul className={styles.siblingList}>
          {data.generations.map(g => {
            const h = g.candidates[Math.floor(Math.random() * g.candidates.length)];
            return <li key={g.year}>
              <div><Link prefetch={false} href={url({horse:h.horse_id})}>{h.name}</Link>
                <small> {g.year}年生まれ世代</small></div>
              <span>{pickupLine(h)}</span>
            </li>;
          })}
        </ul>
      : active === "dark" ? <ul className={styles.siblingList}>
          {data.dark_horses.map(h => <li key={h.horse_id}>
            <div><Link prefetch={false} href={url({horse:h.horse_id})}>{h.name}</Link>
              <small> {h.birth_year}年生まれ</small></div>
            <span>単勝50倍以上で {h.upset_wins}勝{h.best_win
              ? ` · 最高 ${h.best_odds}倍（${h.best_win.race_date} ${h.best_win.race_name || "一般競走"}）` : ""}</span>
          </li>)}
        </ul>
      : pickupList(active === "recent" ? data.recent : allList)}
      {data && <p className={styles.muted}>{active === "recent"
        ? `集計対象は直近5年（${data.as_of}まで）の出走です。`
        : active === "dark"
          ? "過去データ（TARGET収録分）の単勝オッズで集計しています。"
          : active === "gen"
            ? "各世代の勝利数上位（原則5戦以上）から、ランダムで1頭ずつ表示しています。"
            : "歴代勝利数ベスト60からランダムで10頭表示しています。"}</p>}
    </section>
  </>;
}

async function SireView({ q }: { q: string }) {
  if (q.length > 64) throw new HorseDataError("検索語は64文字以内で入力してください。");
  const { sires } = await sireSearch(q);
  const group = (title: string, g: SireHit["as_sire"]) => g.count === 0 ? null : <>
    <p><strong>{title}（{g.count.toLocaleString("ja-JP")}頭）</strong></p>
    {pickupList(g.top)}
  </>;
  return <section className={styles.panel}>
    <h2>血統検索：{q}</h2>
    {!sires.length ? <p>該当する父・母父は見つかりませんでした。</p> : sires.map(s => <div key={s.breeding_id}>
      <h3 className={styles.sireName}>{s.name}{s.birth_year ? <small>（{s.birth_year}年生まれ）</small> : null}</h3>
      {group("父としての産駒", s.as_sire)}
      {group("母父としての産駒", s.as_damsire)}
    </div>)}
    <p className={styles.muted}>産駒の成績はDATA CENTER収録レース（1986年以降）の集計です。</p>
  </section>;
}

function readOffset(field: Params[string]) {
  const text = value(field);
  if (!text) return 0;
  return /^[0-9]{1,5}$/.test(text) && Number(text)<=10000 ? Number(text) : null;
}

async function Content({ searchParams }: { searchParams: Promise<Params> }) {
  await connection();
  const supabase = await createClient();
  const { data: { user } } = await supabase.auth.getUser();
  if (!user) redirect("/login");

  const params = await searchParams;
  const q = value(params.q).trim();
  const horse = value(params.horse);
  const race = value(params.race);
  const ancestor = value(params.ancestor);
  const siblings = value(params.siblings);
  const analysis = value(params.analysis);
  const sire = value(params.sire).trim();
  const tab = value(params.tab);
  const lineage = value(params.line) || "sire";
  const relation = value(params.relation) || "full";
  const depth = value(params.depth) || "12";
  const offset = readOffset(params.offset);
  const filters: HistoryFilters = {};
  for (const key of historyFilterKeys) {
    const filter = value(params[key]);
    if (filter) filters[key] = filter;
  }
  let content;
  try {
    if (offset === null || [horse,race,ancestor,siblings,analysis,sire].filter(Boolean).length > 1 ||
      ["q","horse","race","ancestor","siblings","analysis","sire","tab","scope","group","as_of","line","relation","depth","ancestry","from","offset",...historyFilterKeys].some((key) => Array.isArray(params[key]))) {
      throw new HorseDataError("検索条件を確認してください。");
    }
    // Await here so the local error panel handles upstream failures.
    if (analysis) {
      content = await AnalysisView({
        id:analysis,scopeInput:value(params.scope),groupInput:value(params.group),asOf:value(params.as_of),venues,
      });
    } else if (ancestor) {
      if ((lineage !== "sire" && lineage !== "dam") || !/^(?:[1-9]|[12][0-9]|3[0-2])$/.test(depth)) {
        throw new HorseDataError("系統の表示条件を確認してください。");
      }
      content = await AncestorView({id:ancestor,from:value(params.from),ancestry:value(params.ancestry),line:lineage,depth:Number(depth)});
    } else if (siblings) {
      if (relation !== "full" && relation !== "maternal" && relation !== "paternal") {
        throw new HorseDataError("兄弟馬の検索条件を確認してください。");
      }
      content = await SiblingsView({id:siblings,relation,offset});
    } else if (sire) content = await SireView({q:sire});
    else if (race) content = await RaceView({id:race,offset,from:value(params.from),historyOffset:readOffset(params.historyOffset) ?? 0,filters});
    else if (horse) content = await HorseView({id:horse,offset,filters});
    else content = q ? await SearchResults({q,offset}) : await HomeView({tab});
  } catch (error) {
    if (!(error instanceof HorseDataError)) throw error;
    content = <p className={styles.error} role="alert">{error.message}</p>;
  }
  return <>
    <form action="/horses" className={styles.search} role="search">
      <label htmlFor="horse-q">馬名（部分一致）または馬ID</label>
      <div><input id="horse-q" name="q" type="search" maxLength={64} required defaultValue={q}/>
        <button type="submit">検索</button></div>
    </form>
    {content}
  </>;
}

export default function HorsesPage({ searchParams }: { searchParams: Promise<Params> }) {
  return <main className={styles.page}>
    <header><h1>馬検索</h1></header>
    <Suspense fallback={<p role="status">馬検索を読み込み中…</p>}>
      <Content searchParams={searchParams}/>
    </Suspense>
  </main>;
}
