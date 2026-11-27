"use client";

import { useEffect, useMemo, useRef, useState } from "react";
import { usePredictionMarks, MarkIcon, MARK_LABELS } from "@/components/RacePredictionMarks";
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
  jv_race_key: string | null;
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

type FormItem = {
  race_id: string; date: string; venue: string; race_number: number;
  race_name: string | null; surface: string | null; distance: number | null;
  going: string | null; starters: number | null; horse_number: number | null;
  finish: number | null; jockey: string | null; carried_weight: number | null;
  time: string | null; popularity: number | null; win_odds: number | null;
  last3f: string | null; margin: string | null; passing: string | null;
};

type EvidenceStat = {
  starts: number; wins: number; seconds: number; thirds: number;
  win_rate: number | null; top3_rate: number | null;
};
type ConditionStat = EvidenceStat & { key: string; label: string };
type HorseEvidence = {
  conditions: ConditionStat[];
  jockey: { entered: string | null; combo: EvidenceStat | null; last_jockey: string | null; changed: boolean | null } | null;
  recent: {
    date: string; venue: string; race_number: number; class_label: string | null;
    surface: string | null; distance: number | null; going: string | null;
    finish: number | null; starters: number | null; jockey: string | null;
    last3f: string | null; margin: string | null; passing: string | null;
    interval_days: number | null; last3f_rank?: number; last3f_field?: number;
  } | null;
  pedigree: {
    sire: string | null; damsire: string | null;
    sire_surface: (EvidenceStat & { surface: string; horses: number }) | null;
    sire_distance: (EvidenceStat & { band: string; horses: number }) | null;
  } | null;
};

function fmtStat(s: EvidenceStat): string {
  const wr = s.win_rate != null ? `${(s.win_rate * 100).toFixed(1)}%` : "-";
  const tr = s.top3_rate != null ? `${(s.top3_rate * 100).toFixed(1)}%` : "-";
  return `${s.starts}戦${s.wins}勝（2着${s.seconds}・3着${s.thirds}） 勝率${wr}／3着内率${tr}`;
}

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
  const [formByHorse, setFormByHorse] = useState<Record<string, FormItem[]>>({});
  const [formState, setFormState] = useState<"idle" | "loading" | "ok" | "error">("idle");
  const [evidenceByHorse, setEvidenceByHorse] = useState<Record<string, HorseEvidence | null>>({});
  const [evidenceState, setEvidenceState] = useState<"idle" | "loading" | "ok" | "error">("idle");
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
        .eq("is_test", false)
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

  const pendingRef = useRef<{ date?: string; venue?: string; race?: number }>({});
  useEffect(() => {
    const q = new URLSearchParams(window.location.search);
    pendingRef.current = {
      date: q.get("date") ?? undefined,
      venue: q.get("venue") ?? undefined,
      race: q.get("race") ? Number(q.get("race")) : undefined,
    };
  }, []);
  useEffect(() => {
    const p = pendingRef.current;
    if (!races.length || (!p.date && !p.venue && !p.race)) return;
    if (p.date) setDate(p.date);
    if (p.venue) setVenue(p.venue);
    if (p.race) setRaceNumber(p.race);
    pendingRef.current = {};
  }, [races]);

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
        .select(`id,race_date,venue,race_number,race_name,jv_race_key,surface,distance,track_condition,weather,starts_at,
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

  useEffect(() => {
    if (!detail) { setFormByHorse({}); setFormState("idle"); return; }
    const ids = [...new Set(detail.horse_entries
      .filter(h => h.entry_status === "entered" && h.horse_id && /^\d{10}$/.test(h.horse_id))
      .map(h => h.horse_id as string))];
    if (ids.length === 0) { setFormByHorse({}); setFormState("idle"); return; }
    let active = true;
    setFormState("loading");
    fetch(`/api/horse-form?ids=${ids.join(",")}&before=${detail.race_date}`, { cache: "no-store" })
      .then(async res => { if (!res.ok) throw new Error("form fetch failed"); return res.json(); })
      .then(body => { if (active) { setFormByHorse(body as Record<string, FormItem[]>); setFormState("ok"); } })
      .catch(() => { if (active) { setFormByHorse({}); setFormState("error"); } });
    return () => { active = false; };
  }, [detail?.id]);

  useEffect(() => {
    if (!detail) { setEvidenceByHorse({}); setEvidenceState("idle"); return; }
    const entered = detail.horse_entries
      .filter(h => h.entry_status === "entered" && h.horse_id && /^\d{10}$/.test(h.horse_id));
    if (entered.length === 0) { setEvidenceByHorse({}); setEvidenceState("idle"); return; }
    const ids = [...new Set(entered.map(h => h.horse_id as string))];
    const jockeys: Record<string, string> = {};
    for (const h of entered) if (h.jockey_name) jockeys[h.horse_id as string] = h.jockey_name;
    const params = new URLSearchParams({
      ids: ids.join(","), jockeys: JSON.stringify(jockeys), before: detail.race_date,
      venue: detail.venue, surface: detail.surface ?? "",
      distance: detail.distance != null ? String(detail.distance) : "",
      going: detail.track_condition ?? "",
    });
    let active = true;
    setEvidenceState("loading");
    fetch(`/api/horse-evidence?${params.toString()}`, { cache: "no-store" })
      .then(async res => { if (!res.ok) throw new Error("evidence fetch failed"); return res.json(); })
      .then(body => { if (active) { setEvidenceByHorse(body as Record<string, HorseEvidence | null>); setEvidenceState("ok"); } })
      .catch(() => { if (active) { setEvidenceByHorse({}); setEvidenceState("error"); } });
    return () => { active = false; };
  }, [detail?.id]);

  const [mobileNav, setMobileNav] = useState(false);
  const { marks, cycleMark, marksStatus, marksNote } = usePredictionMarks(detail?.id ?? null);
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
  const showPopularity = entryRows.some(r => r.horse.popularity !== null);
  const showMarket = entryRows.some(r => r.market !== null);
  const showEv = entryRows.some(r => r.ev !== null);
  const formLabels = ["前走", "2走前", "3走前", "4走前", "5走前"];
  const formCols = formState === "ok"
    ? Math.max(1, Math.min(5, Math.max(0, ...Object.values(formByHorse).map(v => v.length)))) : 0;
  // AIお勧め買い目：ページが読み込んだAI予測（予測勝率）のランキングから決定的に組み立てる。
  const pctText = (x: number) => `${(x * 100).toFixed(1)}%`;
  type RankedHorse = { num: number; name: string; prob: number };
  const rankedHorses: RankedHorse[] = activeEntries
    .filter(h => h.horse_number !== null)
    .map(h => ({ num: h.horse_number as number, name: h.horse_name,
      prob: fixedByHorse.get(h.horse_number as number)?.win_probability ?? null }))
    .filter((x): x is RankedHorse => x.prob !== null)
    .sort((a, b) => (b.prob - a.prob) || (a.num - b.num));
  const recTop = rankedHorses[0] ?? null;
  const recPartners = rankedHorses.slice(1, 4);
  const recPartners5 = rankedHorses.slice(1, 5);
  const pairSelections = recTop
    ? recPartners.map(p => [recTop.num, p.num].sort((a, b) => a - b).join("-")) : [];
  const tripleSelections = recTop && recPartners5.length >= 2
    ? recPartners5.flatMap((p, i) => recPartners5.slice(i + 1)
        .map(q => [recTop.num, p.num, q.num].sort((a, b) => a - b).join("-"))) : [];
  const sumProbs = (xs: RankedHorse[]) => xs.reduce((s, x) => s + x.prob, 0);
  const recPlaceOdds = recTop ? (detail?.horse_odds ?? [])
    .filter(o => o.bet_type === "複勝" && Number(o.selection) === recTop.num)
    .sort((a, b) => Date.parse(b.fetched_at) - Date.parse(a.fetched_at))
    .find(o => o.odds_status === "available" && Number(o.odds) > 0) : undefined;
  const recPlaceOddsText = !recPlaceOdds ? null
    : recPlaceOdds.odds_max != null
      ? `${Number(recPlaceOdds.odds).toFixed(1)}〜${Number(recPlaceOdds.odds_max).toFixed(1)}倍`
      : `${Number(recPlaceOdds.odds).toFixed(1)}倍`;
  const recTopWinOdds = recTop ? winOdds.get(recTop.num) : undefined;
  const [recOdds, setRecOdds] = useState<Record<string, { odds: number | null; popularity: number | null }>>({});
  const recRaceKey = detail?.jv_race_key && /^\d{16}$/.test(detail.jv_race_key) ? detail.jv_race_key : null;
  const recSig = recRaceKey && recTop ? `${recRaceKey}:${pairSelections.join(",")}|${tripleSelections.join(",")}` : "";
  useEffect(() => {
    if (!recSig || !recRaceKey) { setRecOdds({}); return; }
    let active = true;
    const fetchBulk = (betType: string, sels: string[]) => {
      if (sels.length === 0) return;
      fetch(`/api/combo-odds?race_key=${recRaceKey}&bet_type=${encodeURIComponent(betType)}&selections=${encodeURIComponent(sels.join(","))}`, { cache: "no-store" })
        .then(async res => {
          if (!res.ok) return;
          const body: { results?: Record<string, { odds: number | null; popularity: number | null }> } = await res.json();
          if (!active || !body.results) return;
          setRecOdds(prev => {
            const next = { ...prev };
            for (const [sel, v] of Object.entries(body.results ?? {})) {
              next[`${betType}:${sel}`] = { odds: v.odds, popularity: v.popularity };
            }
            return next;
          });
        })
        .catch(() => { /* 取得できない組み合わせは「—」表示にする */ });
    };
    fetchBulk("馬連", pairSelections);
    fetchBulk("ワイド", pairSelections);
    fetchBulk("3連複", tripleSelections);
    return () => { active = false; };
    // recSig がレースと買い目の組み合わせを一意に表すため、依存は recSig のみでよい。
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [recSig]);
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
        .rl-horse{--bg:var(--rl-bg);--panel:var(--rl-panel);--line:var(--rl-border);--muted:var(--rl-muted);--green:var(--rl-accent-bright);min-height:100vh;background:var(--bg);color:var(--rl-text);font-family:Arial,'Noto Sans JP',sans-serif}
        .rl-horse *{box-sizing:border-box}.rl-horse a{text-decoration:none;color:inherit}.rl-horse button,.rl-horse select{font:inherit}.rl-horse button{cursor:pointer}
        .rl-horse .side{width:224px;position:fixed;inset:0 auto 0 0;border-right:1px solid var(--line);background:var(--rl-panel);z-index:20;padding:24px 13px}
        .rl-horse .brand{color:var(--green);font-weight:900;letter-spacing:2px;margin:0 7px 36px;font-size:16px}.rl-horse .sidecap{font-size:10px;letter-spacing:2px;color:var(--rl-muted);margin:0 10px 15px;font-weight:800}
        .rl-horse .navlink{display:flex;gap:13px;align-items:center;padding:14px 12px;border-radius:8px;color:var(--rl-sub);font-size:13px;font-weight:700;margin:3px 0}.rl-horse .navlink.active{background:var(--rl-accent-bg);color:var(--green);border-left:2px solid var(--green)}
        .rl-horse .workspace{margin-left:224px;min-width:0}.rl-horse .topbar{height:58px;border-bottom:1px solid var(--line);display:flex;align-items:center;justify-content:space-between;padding:0 35px;color:var(--rl-muted);font-size:10px;letter-spacing:1.8px;font-weight:800}
        .rl-horse .content{max-width:1440px;margin:0 auto;padding:36px 38px 80px}.rl-horse .eyebrow{color:var(--green);font-size:10px;font-weight:900;letter-spacing:2px}.rl-horse h1{font-size:32px;margin:14px 0 8px;letter-spacing:-.5px}.rl-horse .sub{color:var(--muted);font-size:13px;line-height:1.7}
        .rl-horse .sectionhead{font-size:13px;font-weight:800;margin:26px 0 13px}.rl-horse .sectionhead b{color:var(--green);margin-right:12px;font-size:11px}.rl-horse .panel{border:1px solid var(--line);background:var(--panel);border-radius:12px;padding:20px}
        .rl-horse .selectors{display:flex;flex-wrap:wrap;gap:24px;align-items:end}.rl-horse .fieldlabel{display:block;color:var(--rl-muted);font-size:11px;font-weight:700;margin-bottom:9px}.rl-horse select{min-width:170px;padding:12px;background:var(--rl-panel);color:var(--rl-text);border:1px solid var(--rl-border);border-radius:8px}
        .rl-horse .chips{display:flex;flex-wrap:wrap;gap:8px}.rl-horse .chip{background:var(--rl-hover);color:var(--rl-text);border:1px solid var(--rl-border);padding:11px 15px;border-radius:8px;font-weight:800;font-size:12px}.rl-horse .chip.on{background:var(--green);color:var(--rl-accent-bg);border-color:var(--green)}
        .rl-horse .metrics{display:grid;grid-template-columns:repeat(4,minmax(0,1fr));gap:12px;margin-top:16px}.rl-horse .metric{background:var(--panel);border:1px solid var(--line);border-radius:10px;padding:18px}.rl-horse .metric .k{color:var(--rl-sub);font-size:10px;letter-spacing:1px;font-weight:800}.rl-horse .metric .v{font-size:23px;font-weight:900;margin-top:12px}.rl-horse .metric .v.small{font-size:14px}
        .rl-horse .toolbar{display:flex;justify-content:space-between;gap:12px;flex-wrap:wrap;align-items:center;margin:15px 0}.rl-horse .tablewrap{overflow-x:auto;border:1px solid var(--line);border-radius:12px;background:var(--panel)}.rl-horse table{border-collapse:collapse;width:100%;min-width:1050px}.rl-horse th,.rl-horse td{border-right:1px solid var(--rl-border)}.rl-horse th:last-child,.rl-horse td:last-child{border-right:0}.rl-horse th{text-align:left;color:var(--rl-muted);background:var(--rl-panel);font-size:11px;padding:11px 10px;border-bottom:1px solid var(--line);white-space:nowrap}.rl-horse td{padding:11px 10px;border-bottom:1px solid var(--rl-border);font-size:12px;vertical-align:middle}.rl-horse tr:last-child td{border-bottom:0}.rl-horse tbody tr:hover{background:var(--rl-hover)}.rl-horse .horse{font-weight:800;color:var(--rl-text);white-space:nowrap}.rl-horse .number{font-weight:900;color:var(--green)}.rl-horse .muted{color:var(--rl-muted)}.rl-horse .detailbtn{border:1px solid var(--rl-border);background:var(--rl-hover);color:var(--rl-accent-bright);border-radius:6px;padding:7px 9px;margin-top:5px;font-size:11px}.rl-horse .detailtext{white-space:pre-wrap;max-width:230px;line-height:1.6;margin-top:8px;color:var(--rl-sub)}
        .rl-horse .markbtn2{display:inline-grid;place-items:center;width:34px;height:34px;border-radius:10px;border:2px solid var(--rl-border);background:transparent;color:var(--rl-muted);font-size:17px;font-weight:900;line-height:1;padding:0}.rl-horse .markbtn2:disabled{opacity:.45}.rl-horse .markbtn2.m-primary{border-color:#e5484d;color:#e5484d;background:rgba(229,72,77,.13)}.rl-horse .markbtn2.m-secondary{border-color:#4c9aff;color:#4c9aff;background:rgba(76,154,255,.13)}.rl-horse .markbtn2.m-third{border-color:#30a46c;color:#30a46c;background:rgba(48,164,108,.13)}.rl-horse .markbtn2.m-attention{border-color:#f5a524;color:#f5a524;background:rgba(245,165,36,.13)}.rl-horse .formcell{min-width:118px;vertical-align:top}.rl-horse .formdate{font-weight:800;font-size:11px;white-space:nowrap}.rl-horse .formname{font-size:10px;color:var(--rl-sub);white-space:nowrap;overflow:hidden;text-overflow:ellipsis;max-width:132px}.rl-horse .formfinish{font-size:17px;font-weight:900}.rl-horse .formfinish.f1{color:#e5484d}.rl-horse .formfinish.f2{color:#4c9aff}.rl-horse .formfinish.f3{color:#30a46c}.rl-horse .formcell .muted{font-size:10px}.rl-horse .modalback{position:fixed;inset:0;background:rgba(0,0,0,.55);z-index:60;display:flex;align-items:center;justify-content:center;padding:18px}.rl-horse .modal{background:var(--rl-panel);border:1px solid var(--line);border-radius:14px;max-width:560px;width:100%;max-height:82vh;overflow-y:auto;padding:20px}.rl-horse .modalhead{display:flex;justify-content:space-between;align-items:center;gap:12px;margin-bottom:10px}.rl-horse .modalclose{background:var(--rl-hover);border:1px solid var(--rl-border);color:var(--rl-text);border-radius:8px;width:32px;height:32px;font-size:16px;line-height:1;padding:0}.rl-horse .modal .detailtext{max-width:none}.rl-horse .celllinks{display:flex;gap:10px;align-items:center;flex-wrap:wrap;margin-top:2px}.rl-horse th:nth-child(-n+4),.rl-horse td:nth-child(-n+4){position:sticky;background:var(--rl-panel);z-index:3}.rl-horse thead th:nth-child(-n+4){z-index:5}.rl-horse th:nth-child(1),.rl-horse td:nth-child(1){left:0;width:44px;min-width:44px;max-width:44px;box-sizing:border-box}.rl-horse th:nth-child(2),.rl-horse td:nth-child(2){left:43px;width:48px;min-width:48px;max-width:48px;box-sizing:border-box}.rl-horse th:nth-child(3),.rl-horse td:nth-child(3){left:90px;width:58px;min-width:58px;max-width:58px;box-sizing:border-box}.rl-horse th:nth-child(4),.rl-horse td:nth-child(4){left:147px;min-width:150px;box-sizing:border-box;box-shadow:10px 0 14px -10px rgba(0,0,0,.55)}.rl-horse .notice{border:1px solid var(--rl-accent-bg);background:var(--rl-panel);border-radius:10px;padding:14px 18px;color:var(--rl-accent-bright);font-size:12px;margin-top:18px}.rl-horse .alert{border-color:var(--rl-danger-border);background:var(--rl-panel);color:var(--rl-danger-text)}.rl-horse .primary{background:var(--green);color:var(--rl-accent-bg);padding:12px 17px;border-radius:8px;font-weight:900;font-size:12px;display:inline-block}
        .rl-horse .mobilemenu{display:none}.rl-horse .empty{padding:34px;text-align:center;color:var(--rl-muted)}.rl-horse .evhead{font-weight:900;font-size:13px;margin:18px 0 4px;color:var(--green)}.rl-horse .evblock{border-top:1px solid var(--rl-border);padding:10px 0 4px;margin-top:10px}.rl-horse .evtitle{font-size:11px;font-weight:800;color:var(--rl-muted);letter-spacing:1px;margin-bottom:6px}.rl-horse .evrow{display:flex;justify-content:space-between;gap:12px;font-size:12px;padding:3px 0;color:var(--rl-sub)}.rl-horse .evrow span:first-child{font-weight:700;color:var(--rl-text);white-space:nowrap}.rl-horse .evtext{font-size:12px;line-height:1.7;color:var(--rl-sub)}.rl-horse .evnote{font-size:10px;color:var(--rl-muted);margin-top:10px;line-height:1.6}
        .rl-horse .recbet{border-top:1px solid var(--rl-border);padding:12px 0 6px}.rl-horse .recbet:first-child{border-top:0;padding-top:0}.rl-horse .recbethead{display:flex;flex-wrap:wrap;gap:6px 14px;align-items:baseline}.rl-horse .recbettype{font-weight:900;font-size:13px;color:var(--green);white-space:nowrap}.rl-horse .reccombo{font-weight:800;font-size:13px}.rl-horse .recodds{font-size:12px;color:var(--rl-sub);white-space:nowrap}.rl-horse .reccombos{display:flex;flex-wrap:wrap;gap:6px 18px;margin-top:7px;font-size:12px}.rl-horse .reccombos span{white-space:nowrap}.rl-horse .recwhy{font-size:12px;line-height:1.7;color:var(--rl-sub);margin-top:6px}.rl-horse .recnote{font-size:10px;color:var(--rl-muted);margin-top:12px;line-height:1.6}
        @media(max-width:1050px){.rl-horse .metrics{grid-template-columns:repeat(2,minmax(0,1fr))}.rl-horse .content{padding:28px 22px 60px}}
        .rl-horse th:nth-child(-n+3),.rl-horse td:nth-child(-n+3){position:sticky;background:var(--rl-panel);z-index:3}
        .rl-horse thead th:nth-child(-n+3){z-index:5}
        .rl-horse th:nth-child(4),.rl-horse td:nth-child(4){position:static;left:auto;min-width:0;box-shadow:none}
        .rl-horse th:nth-child(1),.rl-horse td:nth-child(1){left:0;width:36px;min-width:36px;max-width:36px;text-align:center}
        .rl-horse th:nth-child(2),.rl-horse td:nth-child(2){left:35px;width:56px;min-width:56px;max-width:56px}
        .rl-horse th:nth-child(3),.rl-horse td:nth-child(3){left:90px;width:auto;min-width:140px;max-width:none;box-shadow:10px 0 14px -10px rgba(0,0,0,.55)}
        .rl-horse .horsesub{font-size:10px;color:var(--rl-muted);white-space:nowrap;margin-top:1px;font-weight:400}
        .rl-horse td.br1{background:#eef1f4;color:#1c2733}
        .rl-horse td.br2{background:#23272e;color:#fff}
        .rl-horse td.br3{background:#d43a3a;color:#fff}
        .rl-horse td.br4{background:#2f6fd0;color:#fff}
        .rl-horse td.br5{background:#f2c94c;color:#1c2733}
        .rl-horse td.br6{background:#2f9e63;color:#fff}
        .rl-horse td.br7{background:#ef8f3c;color:#1c2733}
        .rl-horse td.br8{background:#f2a0c0;color:#1c2733}
        .rl-horse .raceinfo{padding:13px 15px}
        .rl-horse .raceinfo h2{font-size:17px;margin:0 0 3px}
        .rl-horse .raceinfo .primary{padding:8px 12px;font-size:12px}
        .rl-horse .infostats{display:flex;flex-wrap:wrap;margin-top:10px;border-top:1px solid var(--rl-border);padding-top:9px}
        .rl-horse .infostat{padding:0 14px;border-left:1px solid var(--rl-border)}
        .rl-horse .infostat:first-child{padding-left:0;border-left:none}
        .rl-horse .infostat .k{font-size:9px;letter-spacing:.08em;color:var(--rl-faint);font-weight:700}
        .rl-horse .infostat .v{font-size:14px;font-weight:800;margin-top:1px}
        .rl-horse .infostat .v small{font-size:10px;color:var(--rl-muted);font-weight:600}
        @media(max-width:720px){.rl-horse .side{display:none;width:230px}.rl-horse .side.open{display:block}.rl-horse .workspace{margin-left:0}.rl-horse .topbar{padding:0 18px}.rl-horse .mobilemenu{display:inline-flex;border:1px solid var(--rl-border);background:var(--rl-hover);color:var(--rl-accent-bright);border-radius:7px;padding:8px 12px}.rl-horse .content{padding:25px 15px 50px}.rl-horse h1{font-size:27px}.rl-horse .panel{padding:15px}.rl-horse .selectors{gap:16px}.rl-horse .metrics{gap:8px}.rl-horse .metric{padding:13px}.rl-horse .metric .v{font-size:19px}}
        @media(max-width:820px){
          .rl-horse th{padding:9px 7px;font-size:10px}
          .rl-horse td{padding:9px 7px}
          .rl-horse table{min-width:900px}
          .rl-horse th:nth-child(1),.rl-horse td:nth-child(1){width:32px;min-width:32px;max-width:32px}
          .rl-horse th:nth-child(2),.rl-horse td:nth-child(2){left:31px;width:36px;min-width:36px;max-width:36px}
          .rl-horse th:nth-child(3),.rl-horse td:nth-child(3){left:66px;width:44px;min-width:44px;max-width:44px}
          .rl-horse th:nth-child(4),.rl-horse td:nth-child(4){left:109px;min-width:102px}
          .rl-horse .markbtn2{width:30px;height:30px;border-radius:8px}
          .rl-horse .formcell{min-width:98px}
          .rl-horse .formname{max-width:104px}
          .rl-horse td{line-height:1.45}
          .rl-horse .formcell{min-width:118px}
          .rl-horse .formcell .muted{white-space:nowrap;overflow:hidden;text-overflow:ellipsis;max-width:126px}
          .rl-horse .formname{max-width:126px}
          .rl-horse td:nth-child(5),.rl-horse td:nth-child(6),.rl-horse td:nth-child(7){white-space:nowrap}
          .rl-horse .celllinks{flex-direction:column;align-items:flex-start;gap:4px;margin-top:4px}
          .rl-horse .celllinks a{white-space:nowrap;font-size:11px}
          .rl-horse .detailbtn{margin-top:0;white-space:nowrap}
          .rl-horse h1{font-size:22px}
          .rl-horse .panel{padding:12px}
          .rl-horse td{font-size:11px;padding:6px 6px;line-height:1.4}
          .rl-horse th{padding:7px 6px}
          .rl-horse table{min-width:840px}
          .rl-horse .horse{font-size:12px}
          .rl-horse .markbtn2{width:28px;height:28px}
          .rl-horse .formcell{min-width:104px}
          .rl-horse .formdate{font-size:10px}
          .rl-horse .formname{font-size:9px;max-width:112px}
          .rl-horse .formfinish{font-size:15px}
          .rl-horse .formcell .muted{font-size:9px;max-width:112px}
          .rl-horse .metric{padding:9px}
          .rl-horse .metric .v{font-size:16px;margin-top:6px}
          .rl-horse .metrics{margin-top:10px;gap:6px}
          .rl-horse select{padding:9px}
          .rl-horse .chip{padding:8px 10px;font-size:11px}
          .rl-horse .toolbar{margin:10px 0}
          .rl-horse th:nth-child(1),.rl-horse td:nth-child(1){width:22px;min-width:22px;max-width:22px}
          .rl-horse th:nth-child(2),.rl-horse td:nth-child(2){left:21px;width:26px;min-width:26px;max-width:26px}
          .rl-horse th:nth-child(3),.rl-horse td:nth-child(3){left:46px;width:34px;min-width:34px;max-width:34px}
          .rl-horse th:nth-child(4),.rl-horse td:nth-child(4){left:79px;min-width:0}
          .rl-horse .markbtn2{width:24px;height:24px;border-radius:7px}
          .rl-horse .horse{font-size:11px;max-width:80px;overflow:hidden;text-overflow:ellipsis}
          .rl-horse th:nth-child(1),.rl-horse td:nth-child(1){width:26px;min-width:26px;max-width:26px}
          .rl-horse th:nth-child(2),.rl-horse td:nth-child(2){left:25px;width:34px;min-width:34px;max-width:34px}
          .rl-horse th:nth-child(3),.rl-horse td:nth-child(3){left:58px;width:auto;min-width:0;max-width:none}
          .rl-horse th:nth-child(4),.rl-horse td:nth-child(4){position:static;left:auto;min-width:0;box-shadow:none}
          .rl-horse .horse{font-size:10px;max-width:none;overflow:visible}
          .rl-horse .horsesub{font-size:9px}
          .rl-horse .raceinfo{padding:10px 12px}
          .rl-horse .infostat{padding:0 10px}
          .rl-horse .infostat .v{font-size:13px}
          .rl-horse select{min-width:0;width:100%}
          .rl-horse .selectors>div{flex:1 1 140px;min-width:0}
          .rl-horse .chip{padding:9px 11px}
          .rl-horse .detailbtn{padding:8px 10px}
          .rl-horse .modalback{padding:10px}
          .rl-horse .modal{padding:16px}
        }

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
            <section className="panel raceinfo">
              <div style={{ display: "flex", alignItems: "center", justifyContent: "space-between", gap: 16, flexWrap: "wrap" }}>
                <div><h2>{detail.venue} {detail.race_number}R {detail.race_name ? ` / ${detail.race_name}` : ""}</h2><p className="sub">{detail.race_date}　/　{detail.surface ?? "種別未登録"}{detail.distance ? ` ${detail.distance}m` : ""}　/　馬場：{detail.track_condition ?? "未登録"}　/　天候：{detail.weather ?? "未登録"}</p></div>
                <a className="primary" href={`/predictions?sport=horse&date=${detail.race_date}&venue=${encodeURIComponent(detail.venue)}&race=${detail.race_number}`}>このレースを予想する ↗</a>
              </div>
              <div className="infostats">
                <div className="infostat"><div className="k">出走登録馬</div><div className="v">{entryCount}<small> 頭</small></div></div>
                <div className="infostat"><div className="k">発走予定</div><div className="v">{detail.starts_at ? new Date(detail.starts_at).toLocaleTimeString("ja-JP", { timeZone: "Asia/Tokyo", hour: "2-digit", minute: "2-digit" }) : "未登録"}</div></div>
                <div className="infostat"><div className="k">AI予測登録</div><div className="v">{predictionCount}<small> 頭</small></div></div>
                <div className="infostat"><div className="k">オッズ最終取得</div><div className="v">{latestOddsTime ? new Date(latestOddsTime).toLocaleString("ja-JP", { timeZone: "Asia/Tokyo", month: "numeric", day: "numeric", hour: "2-digit", minute: "2-digit" }) : "未取得"}</div></div>
              </div>
            </section>
            <div className="sectionhead"><b>04</b> 出馬表・AI分析</div>
            <div className="toolbar"><div className="chips">{(["単勝", "複勝"] as const).map(t => <button key={t} className={`chip ${oddsType === t ? "on" : ""}`} onClick={() => setOddsType(t)}>{t}オッズ</button>)}</div><label>並び順 <select value={sortBy} onChange={event => setSortBy(event.target.value as typeof sortBy)}>
              <option value="number">馬番</option><option value="model">固定モデル勝率</option>
              <option value="market">市場推定勝率</option><option value="ev">期待回収率</option>
            </select></label>{marksNote && <span className="sub" role="status">{marksNote}</span>}{formState === "loading" && <span className="sub">近走データを取得中…</span>}{formState === "error" && <span className="sub">近走データを取得できませんでした（PC接続が必要です）</span>}{evidenceState === "loading" && <span className="sub">根拠データを取得中…</span>}{evidenceState === "error" && <span className="sub">根拠データを取得できませんでした（PC接続が必要です）</span>}</div>
            <div className="tablewrap"><table><thead><tr>{["馬番", "印", "馬名", "斤量", `${oddsType}オッズ`, ...(showPopularity ? ["人気"] : []), "固定モデル勝率", ...(showMarket ? ["市場推定勝率"] : []), ...(showEv ? ["期待回収率"] : []), "AI評価 / 分析", ...(formCols > 0 ? formLabels.slice(0, formCols) : [])].map(h => <th key={h}>{h}</th>)}</tr></thead><tbody>
              {entryRows.map(({ horse: h, pred, market, ev }) => {
                const odds = detail.horse_odds.filter(o => o.bet_type === oddsType && Number(o.selection) === h.horse_number)
                  .sort((a,b) => Date.parse(b.fetched_at) - Date.parse(a.fetched_at))[0];
                const oddsText = h.entry_status !== "entered" ? "発売対象外" : !odds || odds.odds_status !== "available" ? "未取得" : oddsType === "複勝" && odds.odds_max != null ? `${Number(odds.odds).toFixed(1)}〜${Number(odds.odds_max).toFixed(1)}` : Number(odds.odds).toFixed(1);
                const mark = h.horse_number !== null ? (marks[h.horse_number] ?? "none") : "none";
                return <tr key={h.id}><td className={`number br${h.bracket_number ?? 0}`}>{h.horse_number ?? "未定"}</td><td>{h.entry_status === "entered" && h.horse_number !== null ? <button type="button" className={`markbtn2 m-${mark}`} disabled={marksStatus !== "ready"} aria-label={`${h.horse_number}番の予想印：${MARK_LABELS[mark]}（押すたびに切り替わります）`} title={MARK_LABELS[mark]} onClick={() => void cycleMark(h.horse_number!)}><MarkIcon mark={mark} /></button> : <span className="muted">―</span>}</td><td><div className="horse">{h.horse_id && /^\d{10}$/.test(h.horse_id) ? <a href={`/horses?horse=${h.horse_id}`}>{h.horse_name} ↗</a> : h.horse_name}</div><div className="horsesub">{h.horse_sex ?? ""}{h.horse_age ?? ""}{h.jockey_name ? ` - ${h.jockey_name}` : ""}</div>{h.entry_status !== "entered" && <div style={{ color: "var(--rl-danger-text)", fontSize: 11 }}>{h.entry_status === "scratched" ? "出走取消" : "競走除外"}</div>}</td><td>{h.carried_weight ?? "-"}</td><td>{oddsText}</td>{showPopularity && <td>{h.popularity ?? "-"}</td>}<td>{pred?.win_probability != null ? `${(pred.win_probability * 100).toFixed(1)}%` : "-"}</td>{showMarket && <td>{market == null ? "-" : `${(market * 100).toFixed(1)}%`}</td>}{showEv && <td>{ev == null ? "-" : `${(ev * 100).toFixed(1)}%`}</td>}<td>{predictionError ? "固定予測の取得に失敗" : !pred ? <span className="muted">未登録</span> : pred.win_probability === null ? "予測値なし" : pred.recommendation ?? "固定予測あり"}
                  {((h.horse_id && /^\d{10}$/.test(h.horse_id)) || pred) && <div className="celllinks">{h.horse_id && /^\d{10}$/.test(h.horse_id) && <a href={`/horses?analysis=${h.horse_id}`}>条件別成績 ↗</a>}{pred && <button className="detailbtn" onClick={() => setExpandedHorse(h.horse_number)}>AI分析を見る</button>}</div>}</td>{formCols > 0 && Array.from({ length: formCols }, (_, i) => { const item = h.horse_id ? formByHorse[h.horse_id]?.[i] : undefined; return (<td key={i} className="formcell">{item ? <><div className="formdate">{item.date.slice(5).replace("-", "/")} {item.venue}{item.race_number}R</div>{item.race_name && <div className="formname">{item.race_name}</div>}<div><span className={`formfinish ${item.finish !== null && item.finish <= 3 ? "f" + item.finish : ""}`}>{item.finish ?? "―"}</span><span className="muted"> 着 / {item.starters ?? "?"}頭 {item.horse_number ?? "?"}番</span></div><div className="muted">{item.surface ?? ""}{item.distance ?? ""} {item.going ?? ""} {item.time ?? ""}</div><div className="muted">{item.jockey ?? ""}{item.carried_weight ? ` ${item.carried_weight.toFixed(1)}` : ""}{item.popularity ? ` / ${item.popularity}番人気` : ""}</div>{(item.passing || item.last3f || item.margin) && <div className="muted">{item.passing ?? ""}{item.last3f ? ` 上${item.last3f}` : ""}{item.margin ? ` / 着差${item.margin}` : ""}</div>}</> : <span className="muted">{i === 0 && h.horse_id ? "初出走" : "―"}</span>}</td>); })}</tr>;
              })}
            </tbody></table>{detail.horse_entries.length === 0 && <div className="empty">出走馬はまだ登録されていません。</div>}</div>
            {recTop && <>
              <div className="sectionhead"><b>05</b> AIお勧め買い目</div>
              <section className="panel">
                <div className="recbet">
                  <div className="recbethead"><span className="recbettype">単勝</span><span className="reccombo">{recTop.num}番 {recTop.name}</span><span className="recodds">{recTopWinOdds ? `オッズ ${Number(recTopWinOdds.odds).toFixed(1)}倍` : "オッズ —"}</span></div>
                  <div className="recwhy">根拠：AI予測1位・予測勝率{pctText(recTop.prob)}。{rankedHorses[1] ? `2位の${rankedHorses[1].num}番とは予測勝率で${((recTop.prob - rankedHorses[1].prob) * 100).toFixed(1)}pt差。` : ""}{recTopWinOdds ? `予測勝率×オッズの目安は${(recTop.prob * Number(recTopWinOdds.odds)).toFixed(2)}。` : ""}</div>
                </div>
                <div className="recbet">
                  <div className="recbethead"><span className="recbettype">複勝</span><span className="reccombo">{recTop.num}番 {recTop.name}</span><span className="recodds">{recPlaceOddsText ? `オッズ ${recPlaceOddsText}` : "オッズ —"}</span></div>
                  <div className="recwhy">根拠：AI予測1位（予測勝率{pctText(recTop.prob)}）で、出走馬の中で予測勝率が最も高い1頭。</div>
                </div>
                {pairSelections.length > 0 && <div className="recbet">
                  <div className="recbethead"><span className="recbettype">馬連・流し</span><span className="reccombo">軸：{recTop.num}番 {recTop.name}</span></div>
                  <div className="reccombos">{pairSelections.map((sel, i) => { const o = recOdds[`馬連:${sel}`]; return <span key={sel}>{recTop.num}－{recPartners[i].num}：{o?.odds != null ? `${Number(o.odds).toFixed(1)}倍` : "—"}{o?.popularity != null ? `（${o.popularity}番人気）` : ""}</span>; })}</div>
                  <div className="recwhy">根拠：AI予測1位を軸に、予測2〜{recPartners.length + 1}位へ流し（{pairSelections.length}点）。相手{recPartners.length}頭の予測勝率合計は{pctText(sumProbs(recPartners))}。</div>
                </div>}
                {pairSelections.length > 0 && <div className="recbet">
                  <div className="recbethead"><span className="recbettype">ワイド・流し</span><span className="reccombo">軸：{recTop.num}番 {recTop.name}</span></div>
                  <div className="reccombos">{pairSelections.map((sel, i) => { const o = recOdds[`ワイド:${sel}`]; return <span key={sel}>{recTop.num}－{recPartners[i].num}：{o?.odds != null ? `${Number(o.odds).toFixed(1)}倍` : "—"}{o?.popularity != null ? `（${o.popularity}番人気）` : ""}</span>; })}</div>
                  <div className="recwhy">根拠：AI予測1位を軸に、予測2〜{recPartners.length + 1}位との組み合わせ（{pairSelections.length}点）。</div>
                </div>}
                {tripleSelections.length > 0 && <div className="recbet">
                  <div className="recbethead"><span className="recbettype">{recPartners5.length >= 3 ? "3連複・フォーメーション" : "3連複"}</span><span className="reccombo">軸：{recTop.num}番 {recTop.name}／相手：予測2〜{recPartners5.length + 1}位</span></div>
                  <div className="reccombos">{tripleSelections.map(sel => { const o = recOdds[`3連複:${sel}`]; return <span key={sel}>{sel.split("-").join("－")}：{o?.odds != null ? `${Number(o.odds).toFixed(1)}倍` : "—"}{o?.popularity != null ? `（${o.popularity}番人気）` : ""}</span>; })}</div>
                  <div className="recwhy">根拠：AI予測1位を軸に、予測2〜{recPartners5.length + 1}位から2頭を選ぶ組み合わせ（{tripleSelections.length}点）。AI上位3頭の予測勝率合計は{pctText(sumProbs(rankedHorses.slice(0, 3)))}。</div>
                </div>}
                <p className="recnote">AI予測確率に基づく参考買い目です。回収率を保証するものではありません。</p>
              </section>
            </>}
            <div className="notice">データは表示中のレースについて60秒ごとに再取得します。市場推定勝率は同一時刻の単勝オッズが全出走馬で揃った場合に表示します。期待回収率は固定モデル勝率と取得オッズから求める推定値です。</div>
            {expandedHorse !== null && (() => {
              const mh = detail.horse_entries.find(e => e.horse_number === expandedHorse);
              const mp = fixedByHorse.get(expandedHorse);
              if (!mh || !mp) return null;
              return (
                <div className="modalback" onClick={() => setExpandedHorse(null)}>
                  <div className="modal" role="dialog" aria-modal="true" aria-label="AI分析" onClick={e => e.stopPropagation()}>
                    <div className="modalhead"><strong>{mh.horse_number}番 {mh.horse_name} のAI分析</strong><button type="button" className="modalclose" aria-label="閉じる" onClick={() => setExpandedHorse(null)}>×</button></div>
                    <p className="detailtext">{mp.reason ?? "分析理由は未登録です。"}</p>
                    <p className="sub">評価：{mp.recommendation ?? "-"} / 勝率：{mp.win_probability != null ? (mp.win_probability * 100).toFixed(1) + "%" : "-"} / モデル：{mp.model_version}</p>
                    {(() => {
                      const ev = mh.horse_id ? evidenceByHorse[mh.horse_id] : null;
                      if (evidenceState === "loading") return <p className="sub">根拠データを取得中…</p>;
                      if (!ev) return null;
                      const hasEv = ev.conditions.length > 0 || ev.jockey != null || ev.recent != null || (ev.pedigree != null && (ev.pedigree.sire != null || ev.pedigree.damsire != null));
                      if (!hasEv) return null;
                      return (<>
                        <div className="evhead">根拠データ（実測）</div>
                        {ev.conditions.length > 0 && <div className="evblock"><div className="evtitle">条件別成績（今回の条件で集計）</div>{ev.conditions.map(c => <div className="evrow" key={c.key}><span>{c.label}</span><span>{fmtStat(c)}{c.starts <= 4 ? " ※少数" : ""}</span></div>)}</div>}
                        {ev.jockey && ev.jockey.entered && <div className="evblock"><div className="evtitle">騎手</div><div className="evtext">{ev.jockey.combo ? `${ev.jockey.entered}騎手とのコンビ：${fmtStat(ev.jockey.combo)}` : `${ev.jockey.entered}騎手とは今回が初コンビ`}{ev.jockey.changed === true && ev.jockey.last_jockey ? `／前走の${ev.jockey.last_jockey}騎手から乗り替わり` : ev.jockey.changed === false ? "／前走から継続騎乗" : ""}</div></div>}
                        {ev.pedigree && (ev.pedigree.sire || ev.pedigree.damsire) && <div className="evblock"><div className="evtitle">血統</div><div className="evtext">父：{ev.pedigree.sire ?? "―"}／母父：{ev.pedigree.damsire ?? "―"}</div>{ev.pedigree.sire_surface && <div className="evtext">父産駒の{ev.pedigree.sire_surface.surface}成績：{fmtStat(ev.pedigree.sire_surface)}（産駒{ev.pedigree.sire_surface.horses}頭）</div>}{ev.pedigree.sire_distance && <div className="evtext">父産駒の{ev.pedigree.sire_distance.band}成績：{fmtStat(ev.pedigree.sire_distance)}（産駒{ev.pedigree.sire_distance.horses}頭）</div>}</div>}
                        {ev.recent && <div className="evblock"><div className="evtitle">前走とローテーション</div><div className="evtext">前走：{ev.recent.date} {ev.recent.venue}{ev.recent.race_number}R{ev.recent.class_label ? `（${ev.recent.class_label}）` : ""} {ev.recent.surface ?? ""}{ev.recent.distance ?? ""} {ev.recent.going ?? ""} ― {ev.recent.finish ?? "―"}着／{ev.recent.starters ?? "?"}頭（{ev.recent.jockey ?? "―"}騎手）</div>{(ev.recent.last3f || ev.recent.margin || ev.recent.passing) && <div className="evtext">{ev.recent.last3f ? `上がり3F ${ev.recent.last3f}` : ""}{ev.recent.last3f_rank ? `（${ev.recent.last3f_field}頭中${ev.recent.last3f_rank}位）` : ""}{ev.recent.margin ? `／着差 ${ev.recent.margin}` : ""}{ev.recent.passing ? `／通過 ${ev.recent.passing}` : ""}</div>}{ev.recent.interval_days != null && <div className="evtext">前走から{ev.recent.interval_days}日{ev.recent.interval_days >= 90 ? "（休養明け）" : ev.recent.interval_days <= 8 ? "（連闘）" : ""}</div>}</div>}
                        <p className="evnote">根拠データはこのレースの開催日より前の実績を集計したものです。母数（戦数）が少ない項目には「※少数」と表示しています。</p>
                      </>);
                    })()}
                  </div>
                </div>
              );
            })()}
          </>}
        </main>
      </div>
    </div>
  );
}

