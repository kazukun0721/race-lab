"use client";

import { useEffect, useMemo, useState } from "react";
import { RacePredictionMarks } from "@/components/RacePredictionMarks";
import { useRouter } from "next/navigation";
import { createClient } from "@/lib/supabase/client";

type RaceSummary = {
  id: string;
  race_date: string;
  venue: string;
  race_number: number;
  race_name: string | null;
};
type HorseEntry = {
  id: string;
  horse_id: string | null;
  horse_number: number | null;
  bracket_number: number | null;
  horse_name: string;
  jockey_name: string | null;
  horse_age: number | null;
  horse_sex: string | null;
  carried_weight: number | null;
  popularity: number | null;
  entry_status: string;
};
type HorseOdds = {
  id: string;
  bet_type: string;
  selection: string;
  odds: number;
  odds_max: number | null;
  odds_status: string;
  fetched_at: string;
};
type RaceDetail = RaceSummary & {
  surface: string | null;
  distance: number | null;
  track_condition: string | null;
  weather: string | null;
  starts_at: string | null;
  horse_entries: HorseEntry[];
  horse_odds: HorseOdds[];
};
type AiPrediction = {
  horse_number: number | null;
  prediction_mode: "hit" | "return";
  win_probability: number | null;
  expected_return: number | null;
  recommendation: string | null;
  reason: string | null;
  model_version: string;
};

const venueOrder = ["東京", "中山", "京都", "阪神", "中京", "新潟", "福島", "小倉", "札幌", "函館"];



export default function HorseRacesPage() {
  const router = useRouter();
  const [races, setRaces] = useState<RaceSummary[]>([]);
  const [date, setDate] = useState("");
  const [venue, setVenue] = useState("");
  const [raceNumber, setRaceNumber] = useState<number | null>(null);
  const [detail, setDetail] = useState<RaceDetail | null>(null);
  const [predictions, setPredictions] = useState<AiPrediction[]>([]);
  const [predictionError, setPredictionError] = useState(false);
  const [oddsType, setOddsType] = useState<"単勝" | "複勝">("単勝");
  const [sortBy, setSortBy] = useState<"number" | "market" | "model" | "ev">("number");
  const [expandedHorse, setExpandedHorse] = useState<number | null>(null);
  const [loadingList, setLoadingList] = useState(true);
  const [loadingDetail, setLoadingDetail] = useState(false);
  const [error, setError] = useState("");

  useEffect(() => {
    let active = true;
    const supabase = createClient();
    async function loadList() {
      const { data: { user } } = await supabase.auth.getUser();
      if (!active) return;
      if (!user) { router.replace("/login"); return; }
      const { data, error: dbError } = await supabase.from("horse_races")
        .select("id,race_date,venue,race_number,race_name")
        .order("race_date", { ascending: false })
        .order("race_number", { ascending: true })
        .limit(500);
      if (!active) return;
      if (dbError) setError(dbError.message);
      else setRaces((data ?? []) as RaceSummary[]);
      setLoadingList(false);
    }
    void loadList();
    return () => { active = false; };
  }, [router]);

  const dates = useMemo(() => [...new Set(races.map(r => r.race_date))].sort().reverse(), [races]);
  const selectedDate = dates.includes(date) ? date : (dates[0] ?? "");
  const venues = useMemo(() => [...new Set(races.filter(r => r.race_date === selectedDate).map(r => r.venue))]
    .sort((a,b) => (venueOrder.indexOf(a) < 0 ? 99 : venueOrder.indexOf(a)) - (venueOrder.indexOf(b) < 0 ? 99 : venueOrder.indexOf(b))), [races, selectedDate]);
  const selectedVenue = venues.includes(venue) ? venue : (venues[0] ?? "");
  const availableRaces = useMemo(() => races.filter(r => r.race_date === selectedDate && r.venue === selectedVenue)
    .sort((a,b) => a.race_number - b.race_number), [races, selectedDate, selectedVenue]);
  const selectedRace = availableRaces.find(r => r.race_number === raceNumber) ?? availableRaces[0] ?? null;

  useEffect(() => {
    if (!selectedRace) { setDetail(null); setPredictions([]); return; }
    let active = true;
    const supabase = createClient();
    async function loadDetail(showLoading: boolean) {
      if (showLoading) { setLoadingDetail(true); setDetail(null); setPredictions([]); setPredictionError(false); }
      const { data, error: dbError } = await supabase.from("horse_races")
        .select(`id,race_date,venue,race_number,race_name,surface,distance,track_condition,weather,starts_at,
          horse_entries(id,horse_id,horse_number,bracket_number,horse_name,jockey_name,horse_age,horse_sex,carried_weight,popularity,entry_status),
          horse_odds(id,bet_type,selection,odds,odds_max,odds_status,fetched_at)`)
        .eq("id", selectedRace.id).single();
      if (!active) return;
      if (dbError) { setError(dbError.message); setLoadingDetail(false); return; }
      setError("");
      setDetail(data as RaceDetail);
      setLoadingDetail(false);
      try {
        const res = await fetch(`/api/ai-predictions?race_id=${encodeURIComponent(selectedRace.id)}`, { cache: "no-store" });
        if (!active) return;
        if (!res.ok) throw new Error("Fixed model prediction fetch failed");
        const body = await res.json();
        if (!Array.isArray(body.predictions)) throw new Error("Invalid prediction response");
        if (active) {
          setPredictions(body.predictions);
          setPredictionError(false);
        }
      } catch {
        if (active) {
          setPredictions([]);
          setPredictionError(true);
        }
      }
    }
    void loadDetail(true);
    const timer = window.setInterval(() => { void loadDetail(false); }, 60000);
    return () => { active = false; window.clearInterval(timer); };
  }, [selectedRace?.id]);

  const [mobileNav, setMobileNav] = useState(false);
  const latestOddsTime = detail?.horse_odds.filter(o => o.bet_type === oddsType)
    .map(o => Date.parse(o.fetched_at)).filter(Number.isFinite).sort((a,b) => b-a)[0];

  const entryCount = detail?.horse_entries.length ?? 0;
  const fixedByHorse = new Map<number, AiPrediction>();
  for (const prediction of predictions) {
    if (prediction.horse_number !== null && !fixedByHorse.has(prediction.horse_number)) {
      fixedByHorse.set(prediction.horse_number, prediction);
    }
  }
  const predictionCount = fixedByHorse.size;
  const winOdds = new Map<number, HorseOdds>();
  const latestWinTime = Math.max(...(detail?.horse_odds ?? []).filter(odds => odds.bet_type === "単勝")
    .map(odds => Date.parse(odds.fetched_at)).filter(Number.isFinite));
  for (const odds of detail?.horse_odds ?? []) {
    if (odds.bet_type === "単勝" && Date.parse(odds.fetched_at) === latestWinTime &&
        odds.odds_status === "available" && Number(odds.odds) > 0) {
      winOdds.set(Number(odds.selection), odds);
    }
  }
  const activeEntries = (detail?.horse_entries ?? []).filter(horse => horse.entry_status === "entered");
  const hasFullMarket = activeEntries.length > 0 &&
    activeEntries.every(horse => horse.horse_number !== null && winOdds.has(horse.horse_number));
  const inverseSum = hasFullMarket ? activeEntries.reduce((sum, horse) =>
    sum + 1 / Number(winOdds.get(horse.horse_number!)!.odds), 0) : 0;
  const entryRows = (detail?.horse_entries ?? []).map(horse => {
    const number = horse.horse_number ?? -1;
    const pred = horse.entry_status === "entered" ? fixedByHorse.get(number) : undefined;
    const odds = horse.entry_status === "entered" ? winOdds.get(number) : undefined;
    const market = odds && inverseSum > 0 ? (1 / Number(odds.odds)) / inverseSum : null;
    const ev = pred?.win_probability != null && odds ? pred.win_probability * Number(odds.odds) : null;
    return { horse, pred, market, ev };
  });
  entryRows.sort((a,b) => {
    const values = {number: [null,null], market: [a.market,b.market],
      model: [a.pred?.win_probability,b.pred?.win_probability], ev: [a.ev,b.ev]};
    const [x,y] = values[sortBy];
    return ((y ?? -1) - (x ?? -1)) || (a.horse.horse_number ?? 999) - (b.horse.horse_number ?? 999);
  });
  const nav = [
    { href: "/", label: "ダッシュボード", symbol: "⌂" },
    { href: "/races/auto", label: "レース一覧", symbol: "▤" },
    { href: "/races/horse", label: "AI予測", symbol: "◎" },
    { href: "/review", label: "予測レビュー", symbol: "▥" },
    { href: "/ranking", label: "ランキング", symbol: "▦" },
    { href: "/mypage", label: "マイページ", symbol: "◇" },
  ];
  return (
    <div className="rl-horse">
      <style>{` 
        .rl-horse{--bg:#09111f;--panel:#111f31;--line:#29394e;--muted:#8da6c3;--green:#31dfb3;min-height:100vh;background:var(--bg);color:#eaf4ff;font-family:Arial,'Noto Sans JP',sans-serif}
        .rl-horse *{box-sizing:border-box}.rl-horse a{text-decoration:none;color:inherit}.rl-horse button,.rl-horse select{font:inherit}.rl-horse button{cursor:pointer}
        .rl-horse .side{width:224px;position:fixed;inset:0 auto 0 0;border-right:1px solid var(--line);background:#0d1828;z-index:20;padding:24px 13px}
        .rl-horse .brand{color:var(--green);font-weight:900;letter-spacing:2px;margin:0 7px 36px;font-size:16px}.rl-horse .sidecap{font-size:10px;letter-spacing:2px;color:#7893b2;margin:0 10px 15px;font-weight:800}
        .rl-horse .navlink{display:flex;gap:13px;align-items:center;padding:14px 12px;border-radius:8px;color:#a5bbd7;font-size:13px;font-weight:700;margin:3px 0}.rl-horse .navlink.active{background:#12382f;color:var(--green);border-left:2px solid var(--green)}
        .rl-horse .workspace{margin-left:224px;min-width:0}.rl-horse .topbar{height:58px;border-bottom:1px solid var(--line);display:flex;align-items:center;justify-content:space-between;padding:0 35px;color:#8da6c3;font-size:10px;letter-spacing:1.8px;font-weight:800}
        .rl-horse .content{max-width:1440px;margin:0 auto;padding:36px 38px 80px}.rl-horse .eyebrow{color:var(--green);font-size:10px;font-weight:900;letter-spacing:2px}.rl-horse h1{font-size:32px;margin:14px 0 8px;letter-spacing:-.5px}.rl-horse .sub{color:var(--muted);font-size:13px;line-height:1.7}
        .rl-horse .sectionhead{font-size:13px;font-weight:800;margin:26px 0 13px}.rl-horse .sectionhead b{color:var(--green);margin-right:12px;font-size:11px}.rl-horse .panel{border:1px solid var(--line);background:var(--panel);border-radius:12px;padding:20px}
        .rl-horse .selectors{display:flex;flex-wrap:wrap;gap:24px;align-items:end}.rl-horse .fieldlabel{display:block;color:#90a9c7;font-size:11px;font-weight:700;margin-bottom:9px}.rl-horse select{min-width:170px;padding:12px;background:#0b1828;color:#eaf4ff;border:1px solid #344b62;border-radius:8px}
        .rl-horse .chips{display:flex;flex-wrap:wrap;gap:8px}.rl-horse .chip{background:#1b2b40;color:#d8e8fa;border:1px solid #34475d;padding:11px 15px;border-radius:8px;font-weight:800;font-size:12px}.rl-horse .chip.on{background:var(--green);color:#05251d;border-color:var(--green)}
        .rl-horse .metrics{display:grid;grid-template-columns:repeat(4,minmax(0,1fr));gap:12px;margin-top:16px}.rl-horse .metric{background:var(--panel);border:1px solid var(--line);border-radius:10px;padding:18px}.rl-horse .metric .k{color:#8db1d5;font-size:10px;letter-spacing:1px;font-weight:800}.rl-horse .metric .v{font-size:23px;font-weight:900;margin-top:12px}.rl-horse .metric .v.small{font-size:14px}
        .rl-horse .toolbar{display:flex;justify-content:space-between;gap:12px;flex-wrap:wrap;align-items:center;margin:15px 0}.rl-horse .tablewrap{overflow-x:auto;border:1px solid var(--line);border-radius:12px;background:var(--panel)}.rl-horse table{border-collapse:collapse;width:100%;min-width:1050px}.rl-horse th{text-align:left;color:#86a2c4;background:#101d2e;font-size:11px;padding:15px 12px;border-bottom:1px solid var(--line);white-space:nowrap}.rl-horse td{padding:15px 12px;border-bottom:1px solid #26374c;font-size:12px;vertical-align:middle}.rl-horse tr:last-child td{border-bottom:0}.rl-horse tbody tr:hover{background:#192c42}.rl-horse .horse{font-weight:800;color:#f2f8ff}.rl-horse .number{font-weight:900;color:var(--green)}.rl-horse .muted{color:#819cb9}.rl-horse .detailbtn{border:1px solid #3b5268;background:#1c3147;color:#bce7df;border-radius:6px;padding:7px 9px;margin-top:5px;font-size:11px}.rl-horse .detailtext{white-space:pre-wrap;max-width:230px;line-height:1.6;margin-top:8px;color:#bdd1e6}
        .rl-horse .notice{border:1px solid #34534c;background:#0f272a;border-radius:10px;padding:14px 18px;color:#9edfcf;font-size:12px;margin-top:18px}.rl-horse .alert{border-color:#69434b;background:#2c1a27;color:#ffb8be}.rl-horse .primary{background:var(--green);color:#062a22;padding:12px 17px;border-radius:8px;font-weight:900;font-size:12px;display:inline-block}
        .rl-horse .mobilemenu{display:none}.rl-horse .empty{padding:34px;text-align:center;color:#8da6c3}
        @media(max-width:1050px){.rl-horse .metrics{grid-template-columns:repeat(2,minmax(0,1fr))}.rl-horse .content{padding:28px 22px 60px}}
        @media(max-width:720px){.rl-horse .side{display:none;width:230px}.rl-horse .side.open{display:block}.rl-horse .workspace{margin-left:0}.rl-horse .topbar{padding:0 18px}.rl-horse .mobilemenu{display:inline-flex;border:1px solid #35516b;background:#15263a;color:#d7f5ed;border-radius:7px;padding:8px 12px}.rl-horse .content{padding:25px 15px 50px}.rl-horse h1{font-size:27px}.rl-horse .panel{padding:15px}.rl-horse .selectors{gap:16px}.rl-horse .metrics{gap:8px}.rl-horse .metric{padding:13px}.rl-horse .metric .v{font-size:19px}}
      `}</style>
      <aside className={`side ${mobileNav ? "open" : ""}`}>
        <div className="brand">RACE LAB.</div>
        <div className="sidecap">WORKSPACE</div>
        {nav.map(n => <a key={n.href} href={n.href} className={`navlink ${n.href === "/races/horse" ? "active" : ""}`}><span>{n.symbol}</span>{n.label}</a>)}
      </aside>
      <div className="workspace">
        <div className="topbar"><span><button className="mobilemenu" onClick={() => setMobileNav(v => !v)} aria-expanded={mobileNav}>☰</button> &nbsp; WORKSPACE　/　AI PREDICTION</span><a href="/">OVERVIEW ↗</a></div>
        <main className="content">
          <div className="eyebrow">● RACE INTELLIGENCE / PREDICTION</div>
          <h1>AI予測・出馬表<span style={{ color: "var(--green)" }}>.</span></h1>
          <p className="sub">レース情報、オッズ、AIの予測根拠をひとつの画面で確認できます。</p>
          {loadingList && <div className="notice">レース一覧を取得しています...</div>}
          {error && <div className="notice alert" role="alert">エラー：{error}</div>}
          {!loadingList && !error && dates.length === 0 && <div className="notice">登録されたレースはありません。</div>}
          {dates.length > 0 && <>
            <div className="sectionhead"><b>01</b> 開催条件を選択</div>
            <section className="panel">
              <div className="selectors">
                <div><label htmlFor="horse-date" className="fieldlabel">開催日</label><select id="horse-date" value={selectedDate} onChange={e => { setDate(e.target.value); setVenue(""); setRaceNumber(null); }}>{dates.map(d => <option key={d} value={d}>{d}</option>)}</select></div>
                <div><span className="fieldlabel">競馬場</span><div className="chips">{venues.map(v => <button key={v} className={`chip ${selectedVenue === v ? "on" : ""}`} aria-pressed={selectedVenue === v} onClick={() => { setVenue(v); setRaceNumber(null); }}>{v}</button>)}</div></div>
              </div>
            </section>
            <div className="sectionhead"><b>02</b> レース選択</div>
            <section className="panel"><div className="chips">{availableRaces.map(r => <button key={r.id} className={`chip ${selectedRace?.id === r.id ? "on" : ""}`} aria-pressed={selectedRace?.id === r.id} onClick={() => { setRaceNumber(r.race_number); setExpandedHorse(null); }}>{r.race_number}R</button>)}</div></section>
          </>}
          {loadingDetail && <div className="notice">選択レースの詳細を取得しています...</div>}
          {detail && !loadingDetail && <>
            <div className="sectionhead"><b>03</b> レース情報 / {detail.venue} {detail.race_number}R</div>
            <section className="panel">
              <div style={{ display: "flex", alignItems: "center", justifyContent: "space-between", gap: 16, flexWrap: "wrap" }}>
                <div><h2 style={{ fontSize: 20, margin: "0 0 7px" }}>{detail.venue} {detail.race_number}R {detail.race_name ? ` / ${detail.race_name}` : ""}</h2><p className="sub">{detail.race_date}　/　{detail.surface ?? "種別未登録"}{detail.distance ? ` ${detail.distance}m` : ""}　/　馬場：{detail.track_condition ?? "未登録"}　/　天候：{detail.weather ?? "未登録"}</p></div>
                <a className="primary" href={`/predictions?sport=horse&date=${detail.race_date}&venue=${encodeURIComponent(detail.venue)}&race=${detail.race_number}`}>このレースを予想する ↗</a>
              </div>
              <div className="metrics">
                <div className="metric"><div className="k">出走登録馬</div><div className="v">{entryCount}<span style={{ fontSize: 12 }}> 頭</span></div></div>
                <div className="metric"><div className="k">発走予定</div><div className="v small">{detail.starts_at ? new Date(detail.starts_at).toLocaleTimeString("ja-JP", { timeZone: "Asia/Tokyo", hour: "2-digit", minute: "2-digit" }) : "未登録"}</div></div>
                <div className="metric"><div className="k">AI予測登録</div><div className="v">{predictionCount}<span style={{ fontSize: 12 }}> 頭</span></div></div>
                <div className="metric"><div className="k">オッズ最終取得</div><div className="v small">{latestOddsTime ? new Date(latestOddsTime).toLocaleString("ja-JP", { timeZone: "Asia/Tokyo", month: "numeric", day: "numeric", hour: "2-digit", minute: "2-digit" }) : "未取得"}</div></div>
              </div>
            </section>
            <div className="sectionhead"><b>04</b> 出馬表・AI分析</div>
            <RacePredictionMarks key={detail.id} raceId={detail.id}
              entries={detail.horse_entries.flatMap(horse =>
                horse.entry_status === "entered" && horse.horse_number !== null
                  ? [{horse_number: horse.horse_number, horse_name: horse.horse_name}]
                  : [])} />
            <div className="toolbar"><div className="chips">{(["単勝", "複勝"] as const).map(t => <button key={t} className={`chip ${oddsType === t ? "on" : ""}`} onClick={() => setOddsType(t)}>{t}オッズ</button>)}</div><label>並び順 <select value={sortBy} onChange={event => setSortBy(event.target.value as typeof sortBy)}>
              <option value="number">馬番</option><option value="model">固定モデル勝率</option>
              <option value="market">市場推定勝率</option><option value="ev">期待回収率</option>
            </select></label></div>
            <div className="tablewrap"><table><thead><tr>{["枠", "馬番", "馬名", "性齢", "騎手", "斤量", `${oddsType}オッズ`, "人気", "固定モデル勝率", "市場推定勝率", "期待回収率", "AI評価 / 分析"].map(h => <th key={h}>{h}</th>)}</tr></thead><tbody>
              {entryRows.map(({ horse: h, pred, market, ev }) => {
                const odds = detail.horse_odds.filter(o => o.bet_type === oddsType && Number(o.selection) === h.horse_number)
                  .sort((a,b) => Date.parse(b.fetched_at) - Date.parse(a.fetched_at))[0];
                const oddsText = h.entry_status !== "entered" ? "発売対象外" : !odds || odds.odds_status !== "available" ? "未取得" : oddsType === "複勝" && odds.odds_max != null ? `${Number(odds.odds).toFixed(1)}〜${Number(odds.odds_max).toFixed(1)}` : Number(odds.odds).toFixed(1);
                return <tr key={h.id}><td>{h.bracket_number ?? "-"}</td><td className="number">{h.horse_number ?? "未定"}</td><td><div className="horse">{h.horse_id && /^\d{10}$/.test(h.horse_id) ? <a href={`/horses?horse=${h.horse_id}`}>{h.horse_name} ↗</a> : h.horse_name}</div>{h.entry_status !== "entered" && <div style={{ color: "#ffadb5", fontSize: 11 }}>{h.entry_status === "scratched" ? "出走取消" : "競走除外"}</div>}</td><td>{h.horse_sex ?? ""}{h.horse_age ?? ""}</td><td>{h.jockey_name ?? "-"}</td><td>{h.carried_weight ?? "-"}</td><td>{oddsText}</td><td>{h.popularity ?? "-"}</td><td>{pred?.win_probability != null ? `${(pred.win_probability * 100).toFixed(1)}%` : "-"}</td><td>{market == null ? "-" : `${(market * 100).toFixed(1)}%`}</td><td>{ev == null ? "-" : `${(ev * 100).toFixed(1)}%`}</td><td>{predictionError ? "固定予測の取得に失敗" : !pred ? "固定予測未登録" : pred.win_probability === null ? "予測値なし" : pred.recommendation ?? "固定予測あり"}
                  {h.entry_status === "entered" && market === null && <div className="sub">市場確率の算出に必要なオッズが不足</div>}
                  {h.horse_id && /^\d{10}$/.test(h.horse_id) && <div><a href={`/horses?analysis=${h.horse_id}`}>過去の条件別成績 ↗</a></div>}
                  {pred && <><div><button className="detailbtn" onClick={() => setExpandedHorse(expandedHorse === h.horse_number ? null : h.horse_number)} aria-expanded={expandedHorse === h.horse_number}>{expandedHorse === h.horse_number ? "分析を閉じる" : "AI分析を見る"}</button></div>{expandedHorse === h.horse_number && <div className="detailtext" style={{ whiteSpace: "pre-wrap" }}>{pred.reason ?? "分析理由は未登録です。"}<div style={{ marginTop: 6 }}>モデル：{pred.model_version}</div></div>}</>}</td></tr>;
              })}
            </tbody></table>{detail.horse_entries.length === 0 && <div className="empty">出走馬はまだ登録されていません。</div>}</div>
            <div className="notice">データは表示中のレースについて60秒ごとに再取得します。市場推定勝率は同一時刻の単勝オッズが全出走馬で揃った場合に表示します。期待回収率は固定モデル勝率と取得オッズから求める推定値です。</div>
          </>}
        </main>
      </div>
    </div>
  );
}

