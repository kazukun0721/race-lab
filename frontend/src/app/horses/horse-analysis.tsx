import Link from "next/link";
import { HorseDataError, horsePerformance, isHorseId, type AnalysisGroup, type AnalysisScope, type Performance } from "@/lib/data-center";
import styles from "./horses.module.css";

const scopes = { horse: "本人", sire: "父の産駒", dam: "母の産駒", damsire: "同じ母父を持つ馬" };
const groups = { venue: "競馬場", surface: "芝・ダート", distance: "距離帯", going: "馬場状態", year: "開催年", jockey: "騎手" };
const groupLabels: Partial<Record<AnalysisGroup,Record<string,string>>> = {
  surface: { turf:"芝", dirt:"ダート", jump:"障害", sand:"サンド" },
  distance: { short:"1,400m未満", mile:"1,400～1,799m", middle:"1,800～2,399m", long:"2,400m以上" },
  going: { good:"良", yielding:"稍重", soft:"重", heavy:"不良" },
};
const reasons: Record<string,string> = {
  withdrawn:"出走取消", excluded_at_start:"発走除外", excluded_from_race:"競走除外",
  unknown_start_status:"出走状態が未確認", parent_claim_conflict:"親IDの競合",
  unresolved_parent:"血統参照が未確認", damsire_disagreement:"母父の二経路不一致",
  target_ra:"照合済みTARGET RA", jvlink_ra:"照合済みJV-Link RA",
  surface_not_applicable:"馬場状態の対象外", going_unrecorded:"馬場状態が未収録",
  unverified_race_source:"レース原文を照合できない",
};

const count = (value: number) => value.toLocaleString("ja-JP");
const percent = (value: number | null) => value === null ? "—" : (value*100).toFixed(1)+"%";
const href = (params: Record<string,string>) => "/horses?" + new URLSearchParams(params);

function Metrics({ rows, summary }: {
  rows: (Performance["total"] & { label: string })[]; summary: boolean;
}) {
  return <div className={styles.tableScroll} role="region" tabIndex={0} aria-label={summary ? "集計値" : "条件ごとの比較"}>
    <table className={styles.analysisTable}>
      <thead><tr>
        <th scope="col">条件</th><th scope="col">出走馬</th><th scope="col">出走</th>
        <th scope="col">1着 / 2着 / 3着</th><th scope="col">勝率</th><th scope="col">連対率</th>
        <th scope="col">複勝率</th><th scope="col">平均着順</th>
      </tr></thead>
      <tbody>{rows.map(row => <tr key={row.label}>
        <th scope="row">{row.label}</th><td>{count(row.horses_with_starts)}頭</td><td>{count(row.starts)}</td>
        <td>{[row.wins,row.seconds,row.thirds].map(count).join(" / ")}</td>
        <td>{percent(row.win_rate)}</td><td>{percent(row.top2_rate)}</td><td>{percent(row.top3_rate)}</td>
        <td>{row.average_finish?.toFixed(2) ?? "—"}
          {row.ranked_starts > 0 && <small>{count(row.ranked_starts)}件対象</small>}</td>
      </tr>)}</tbody>
    </table>
  </div>;
}

function reasonsList(values: Record<string,number>, unit: string) {
  return Object.keys(values).length ? Object.entries(values)
    .map(([key,n]) => (reasons[key] ?? key)+" "+count(n)+unit).join("、") : "0"+unit;
}

export async function AnalysisView({id,scopeInput,groupInput,asOf,venues}: {
  id:string; scopeInput:string; groupInput:string; asOf:string; venues:Record<string,string>;
}) {
  if (!isHorseId(id)) throw new HorseDataError("馬IDは半角数字10桁で入力してください。");
  if ((scopeInput && !Object.hasOwn(scopes,scopeInput)) ||
      (groupInput && !Object.hasOwn(groups,groupInput)) || (asOf && !/^\d{4}-\d{2}-\d{2}$/.test(asOf))) {
    throw new HorseDataError("分析条件を確認してください。");
  }
  const scope = (scopeInput || "horse") as AnalysisScope;
  const group = (groupInput || (scope === "horse" ? "venue" : "surface")) as AnalysisGroup;
  if (scope !== "horse" && group === "jockey") throw new HorseDataError("騎手別は本人の成績で選択できます。");
  const result = await horsePerformance(id,scope,group,asOf);
  const terms = Object.entries(groups).filter(([key]) => scope === "horse" || key !== "jockey");
  const groupNames = group === "venue" ? venues : groupLabels[group];
  const total = result.total;
  return <section className={styles.panel}>
    <Link prefetch={false} href={href({horse:id})}>元の馬へ戻る</Link>
    <h2>{result.horse_name}の血統・条件別成績</h2>
    <nav className={styles.ancestryActions} aria-label="成績の対象">
      {(Object.entries(scopes) as [AnalysisScope,string][]).map(([key,label]) =>
        <Link prefetch={false} key={key} aria-current={key===scope ? "page" : undefined}
          href={href({analysis:id,scope:key,...(asOf ? {as_of:asOf} : {})})}>{label}</Link>)}
    </nav>
    <form action="/horses" className={styles.filters} aria-label="分析条件">
      <input type="hidden" name="analysis" value={id}/>
      <input type="hidden" name="scope" value={scope}/>
      <label>比較条件<select name="group" defaultValue={group}>
        {terms.map(([key,label]) => <option value={key} key={key}>{label}</option>)}
      </select></label>
      <label>基準日<input type="date" name="as_of" defaultValue={asOf}/></label>
      <div className={styles.filterActions}><button type="submit">表示する</button>
        {asOf && <Link prefetch={false} href={href({analysis:id,scope,group})}>基準日をクリア</Link>}
      </div>
    </form>
    <p>{asOf ? asOf+"より前のレース（当日を除く）" : "現在収録されている全期間"}</p>
    {result.reference && <p>
      馬マスタ（UM） {[result.reference.um.name,result.reference.um.breeding_id].filter(Boolean).join(" ") || "参照未確認"}
      {result.reference.hn && <> · 母の繁殖馬マスタ（HN） {[result.reference.hn.name,result.reference.hn.breeding_id].filter(Boolean).join(" ") || "参照未確認"}</>}
    </p>}
    {scope==="damsire" && <p className={styles.muted}>母父の番号がUMとHNで一致する競走馬群を集計します。</p>}
    {result.status==="unconfirmed" ? <p role="status">集計対象を確認できませんでした。{reasons[result.reason ?? ""]}</p> : <>
      <p>{scope==="horse" ? "対象馬" : "対象産駒・関連馬"} {count(result.cohort_horses)}頭 · 出走記録あり {count(total.horses_with_starts)}頭
        {total.first_race && <> · {total.first_race} ～ {total.last_race}</>}</p>
      {total.starts===0 ? <p>対象期間の出走記録はありません。</p> : <>
        <Metrics rows={[{...total,label:"合計"}]} summary/>
        <h3>{groups[group]}別の比較</h3>
        <Metrics rows={result.groups.map(row => ({
          ...row,label:row.key==="unknown" ? "不明・対象外" : (groupNames?.[row.key] ?? row.key),
        }))} summary={false}/>
      </>}
      {scope!=="horse" && result.named_wins.length>0 && <>
        <h3>直近の名称付き勝利</h3>
        <ul className={styles.siblingList}>{result.named_wins.map(row => <li key={row.race_id+"-"+row.horse_id}>
          <Link prefetch={false} href={href({race:row.race_id})}>{row.name}</Link>
          <small>{row.race_date} · <Link prefetch={false} href={href({horse:row.horse_id})}>馬ID {row.horse_id}</Link></small>
        </li>)}</ul>
      </>}
    </>}
    <details className={styles.analysisQuality} open>
      <summary>集計の根拠とデータ品質</summary>
      <p>血統の除外 {reasonsList(result.quality.excluded_horses,"頭")}。成績の除外 {reasonsList(result.quality.excluded_results,"件")}。</p>
      <p>順位を持たない出走 {count(result.quality.unranked_starts)}件。条件が不明または対象外 {count(result.quality.unknown_condition)}件。</p>
      {group==="going" && <p>馬場状態の出典 {reasonsList(result.quality.going_sources,"件")}。</p>}
      <p>勝率・連対率・複勝率の分母は出走数です。平均着順は有効な確定着順から計算します。馬場状態は照合済みレース原文を使用します。</p>
      <p>過去の基準日は現在の保存内容を開催日で絞った集計です。当時の配信版を再現する機能ではありません。</p>
    </details>
  </section>;
}
