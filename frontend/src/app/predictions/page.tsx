"use client";

import { useCallback, useEffect, useMemo, useRef, useState } from "react";
import { useRouter } from "next/navigation";
import { createClient } from "@/lib/supabase/client";
import { FIXED_MODEL_VERSION } from "@/lib/fixed-model";

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
  id: string;
  race_id: string;
  horse_number: number;
  prediction_mode: string;
  win_probability: number;
  odds_at_prediction: number | null;
  expected_return: number | null;
  recommendation: string;
  reason: string | null;
  model_version: string;
  created_at: string;
};
type Prediction = {
  id: string;
  sport: string;
  race_date: string;
  venue: string;
  race_number: number;
  bet_type: string;
  selection: string;
  odds: number | null;
  stake: number;
  created_at: string;
  referenced_ai_prediction_id?: string | null;
  referenced_ai_model_version?: string | null;
  referenced_ai_win_probability?: number | null;
  referenced_ai_expected_return?: number | null;
};

const venueOrder = ["東京", "中山", "京都", "阪神", "中京", "新潟", "福島", "小倉", "札幌", "函館"];
const BET_TYPES = ["単勝", "複勝", "馬連", "ワイド", "馬単", "3連複", "3連単"];
const BET_COUNTS: Record<string, number> = {
  単勝: 1, 複勝: 1, 馬連: 2, 馬単: 2, ワイド: 2, "3連複": 3, "3連単": 3,
};
const ORDERED_BETS = new Set(["馬単", "3連単"]);
const UNORDERED_BETS = new Set(["馬連", "ワイド", "3連複"]);
const STAKE_PRESETS = [100, 300, 500, 1000, 3000, 5000];

function normalizeSelection(value: string, betType: string): { value?: string; error?: string } {
  const count = BET_COUNTS[betType];
  if (!count || !BET_TYPES.includes(betType)) return { error: "対応していない券種です。" };
  const normalized = value.trim()
    .replace(/[０-９]/g, (char) => String(char.charCodeAt(0) - 0xff10))
    .replace(/[－ー−]/g, "-")
    .replace(/\s+/g, "");
  if (!/^\d+(?:-\d+)*$/.test(normalized)) {
    return { error: "買い目は「1」または「1-2-3」の形式で入力してください。" };
  }
  const parts = normalized.split("-").map(Number);
  if (parts.length !== count) return { error: `${betType}は${count}つの番号を入力してください。` };
  if (parts.some((n) => !Number.isInteger(n) || n < 1 || n > 18)) {
    return { error: "番号は1～18の範囲で入力してください。" };
  }
  if (new Set(parts).size !== parts.length) return { error: "同じ番号を重複して指定することはできません。" };
  if (UNORDERED_BETS.has(betType)) parts.sort((a, b) => a - b);
  return { value: parts.join("-") };
}

function combinationsOf(arr: number[], k: number): number[][] {
  if (k === 0) return [[]];
  if (arr.length < k) return [];
  const [head, ...rest] = arr;
  return [...combinationsOf(rest, k - 1).map(c => [head, ...c]), ...combinationsOf(rest, k)];
}

function permutationsOf(arr: number[], k: number): number[][] {
  if (k === 0) return [[]];
  const out: number[][] = [];
  for (let i = 0; i < arr.length; i++) {
    const rest = [...arr.slice(0, i), ...arr.slice(i + 1)];
    for (const tail of permutationsOf(rest, k - 1)) out.push([arr[i], ...tail]);
  }
  return out;
}

export default function PredictionsPage() {
  const router = useRouter();
  const [supabase] = useState(() => createClient());
  const [userId, setUserId] = useState("");
  const [races, setRaces] = useState<RaceSummary[]>([]);
  const [date, setDate] = useState("");
  const [venue, setVenue] = useState("");
  const [raceNumber, setRaceNumber] = useState<number | null>(null);
  const [detail, setDetail] = useState<RaceDetail | null>(null);
  const [aiByHorse, setAiByHorse] = useState<Map<number, AiPrediction>>(new Map());
  const [aiMessage, setAiMessage] = useState("");
  const [loadingList, setLoadingList] = useState(true);
  const [loadingDetail, setLoadingDetail] = useState(false);
  const [error, setError] = useState("");

  const [betType, setBetType] = useState("単勝");
  const [picks, setPicks] = useState<number[]>([]);
  const [odds, setOdds] = useState("");
  const [stake, setStake] = useState("1000");
  const [selectedAi, setSelectedAi] = useState<AiPrediction | null>(null);
  const [saving, setSaving] = useState(false);
  const [message, setMessage] = useState("");

  const [myPredictions, setMyPredictions] = useState<Prediction[]>([]);
  const [adviceLoadingId, setAdviceLoadingId] = useState<string | null>(null);
  const [adviceById, setAdviceById] = useState<Record<string, string>>({});
  const [confirmDeleteId, setConfirmDeleteId] = useState<string | null>(null);
  const [deletingId, setDeletingId] = useState<string | null>(null);
  type ComboState = {
    status: "idle" | "loading" | "ok" | "missing" | "error";
    odds?: number | null;
    oddsMax?: number | null;
    popularity?: number | null;
    fetchedAt?: string | null;
  };
  const [combo, setCombo] = useState<ComboState>({ status: "idle" });
  const selectedAiRef = useRef<AiPrediction | null>(null);
  useEffect(() => { selectedAiRef.current = selectedAi; }, [selectedAi]);

  // JRA方式の買い方（通常／流し／ボックス／フォーメーション）
  type BuyMode = "通常" | "流し" | "ボックス" | "フォーメーション";
  const [mode, setMode] = useState<BuyMode>("通常");
  const [axisPicks, setAxisPicks] = useState<number[]>([]);
  const [partnerPicks, setPartnerPicks] = useState<number[]>([]);
  const [boxPicks, setBoxPicks] = useState<number[]>([]);
  const [formation, setFormation] = useState<number[][]>([[], [], []]);
  const [axisPos, setAxisPos] = useState(1);
  const [axisPosPair, setAxisPosPair] = useState("1-2");
  const [multi, setMulti] = useState(false);
  const [showAi, setShowAi] = useState(false);
  const [showCombos, setShowCombos] = useState(false);
  const [bulkOdds, setBulkOdds] = useState<Record<string,
    { odds: number | null; oddsMax: number | null; popularity: number | null }>>({});
  const [bulkStatus, setBulkStatus] = useState<"idle" | "loading" | "ok" | "error">("idle");

  const loadMyPredictions = useCallback(async () => {
    const { data, error: dbError } = await supabase
      .from("predictions").select("*").order("created_at", { ascending: false });
    if (dbError) setMessage("読み込みエラー: " + dbError.message);
    else setMyPredictions((data ?? []) as Prediction[]);
  }, [supabase]);

  useEffect(() => {
    let active = true;
    async function init() {
      const { data: { user } } = await supabase.auth.getUser();
      if (!active) return;
      if (!user) { router.replace("/login"); return; }
      setUserId(user.id);
      await loadMyPredictions();
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
    void init();
    return () => { active = false; };
  }, [router, supabase, loadMyPredictions]);

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
    .sort((a, b) => (venueOrder.indexOf(a) < 0 ? 99 : venueOrder.indexOf(a)) - (venueOrder.indexOf(b) < 0 ? 99 : venueOrder.indexOf(b))), [races, selectedDate]);
  const selectedVenue = venues.includes(venue) ? venue : (venues[0] ?? "");
  const availableRaces = useMemo(() => races.filter(r => r.race_date === selectedDate && r.venue === selectedVenue)
    .sort((a, b) => a.race_number - b.race_number), [races, selectedDate, selectedVenue]);
  const selectedRace = availableRaces.find(r => r.race_number === raceNumber) ?? availableRaces[0] ?? null;

  const resetBet = useCallback(() => {
    setPicks([]); setOdds(""); setSelectedAi(null); setMessage("");
    setMode("通常");
    setAxisPicks([]); setPartnerPicks([]); setBoxPicks([]);
    setFormation([[], [], []]);
  }, []);

  useEffect(() => {
    if (!selectedRace) { setDetail(null); setAiByHorse(new Map()); return; }
    let active = true;
    setLoadingDetail(true);
    setDetail(null);
    setAiByHorse(new Map());
    setAiMessage("");
    resetBet();
    setBetType("単勝");
    async function loadDetail() {
      const { data, error: dbError } = await supabase.from("horse_races")
        .select(`id,race_date,venue,race_number,race_name,jv_race_key,surface,distance,track_condition,weather,starts_at,
          horse_entries(id,horse_id,horse_number,bracket_number,horse_name,jockey_name,horse_age,horse_sex,carried_weight,popularity,entry_status),
          horse_odds(id,bet_type,selection,odds,odds_max,odds_status,fetched_at)`)
        .eq("id", selectedRace!.id).single();
      if (!active) return;
      if (dbError) { setError(dbError.message); setLoadingDetail(false); return; }
      setError("");
      setDetail(data as RaceDetail);
      setLoadingDetail(false);
      try {
        const res = await fetch(`/api/ai-predictions?race_id=${encodeURIComponent(selectedRace!.id)}`, { cache: "no-store" });
        const body: { predictions?: AiPrediction[]; error?: string } = await res.json();
        if (!active) return;
        if (!res.ok) { setAiMessage(body.error ?? "AI予測を取得できませんでした。"); return; }
        const rows = (body.predictions ?? []).filter(row => row.model_version === FIXED_MODEL_VERSION);
        const latest = [...rows].sort((a, b) => b.created_at.localeCompare(a.created_at))[0];
        const group = latest ? rows.filter(x => x.model_version === latest.model_version
          && x.prediction_mode === latest.prediction_mode && x.created_at === latest.created_at) : [];
        const map = new Map<number, AiPrediction>();
        for (const row of group) map.set(row.horse_number, row);
        setAiByHorse(map);
        setAiMessage(group.length ? "" : "このレースのAI予測はまだ生成されていません。");
      } catch {
        if (active) setAiMessage("AI予測APIとの通信に失敗しました。");
      }
    }
    void loadDetail();
    return () => { active = false; };
  }, [selectedRace?.id, supabase, resetBet]);

  const latestOdds = useCallback((type: string) => {
    const rows = (detail?.horse_odds ?? []).filter(o => o.bet_type === type);
    const latestTime = Math.max(...rows.map(o => Date.parse(o.fetched_at)).filter(Number.isFinite));
    const map = new Map<number, HorseOdds>();
    for (const o of rows) {
      if (Date.parse(o.fetched_at) === latestTime && o.odds_status === "available" && Number(o.odds) > 0) {
        map.set(Number(o.selection), o);
      }
    }
    return map;
  }, [detail]);
  const winOdds = useMemo(() => latestOdds("単勝"), [latestOdds]);
  const placeOdds = useMemo(() => latestOdds("複勝"), [latestOdds]);
  const latestOddsTime = (detail?.horse_odds ?? [])
    .map(o => Date.parse(o.fetched_at)).filter(Number.isFinite).sort((a, b) => b - a)[0];

  const nameByNumber = useMemo(() => {
    const map = new Map<number, string>();
    for (const h of detail?.horse_entries ?? []) {
      if (h.horse_number !== null) map.set(h.horse_number, h.horse_name);
    }
    return map;
  }, [detail]);

  const needCount = BET_COUNTS[betType] ?? 1;

  // 単勝・複勝で1頭だけ選んだときは、その馬の現在オッズを自動入力する（AI選択中は除く）。
  useEffect(() => {
    if (selectedAi) return;
    if ((betType === "単勝" || betType === "複勝") && picks.length === 1) {
      const o = (betType === "単勝" ? winOdds : placeOdds).get(picks[0]);
      setOdds(o ? String(Number(o.odds)) : "");
    }
  }, [picks, betType, winOdds, placeOdds, selectedAi]);

  // 組み合わせ券種は、頭数が揃ったらPC側の最新オッズを取得して表示・自動入力する。
  const comboRaceKey = detail?.jv_race_key ?? null;
  useEffect(() => {
    if (!comboRaceKey || betType === "単勝" || betType === "複勝" || picks.length !== needCount) {
      setCombo({ status: "idle" });
      return;
    }
    const parts = UNORDERED_BETS.has(betType) ? [...picks].sort((a, b) => a - b) : picks;
    const selection = parts.join("-");
    let active = true;
    setCombo({ status: "loading" });
    fetch(`/api/combo-odds?race_key=${comboRaceKey}&bet_type=${encodeURIComponent(betType)}&selection=${selection}`,
      { cache: "no-store" })
      .then(async res => {
        const body: { found?: boolean; odds?: number | null; odds_max?: number | null;
          popularity?: number | null; fetched_at?: string | null } = await res.json();
        if (!active) return;
        if (!res.ok) { setCombo({ status: "error" }); return; }
        if (!body.found) { setCombo({ status: "missing" }); return; }
        setCombo({ status: "ok", odds: body.odds, oddsMax: body.odds_max,
          popularity: body.popularity, fetchedAt: body.fetched_at });
        if (!selectedAiRef.current && body.odds != null) setOdds(String(body.odds));
      })
      .catch(() => { if (active) setCombo({ status: "error" }); });
    return () => { active = false; };
  }, [comboRaceKey, betType, picks, needCount]);

  const maxAxis = betType === "3連複" || betType === "3連単" ? 2 : 1;

  // 選択内容から買い目の組み合わせを全て生成する（JRA方式）。
  const combos = useMemo<string[]>(() => {
    let raw: number[][] = [];
    if (mode === "通常") {
      if (picks.length === needCount) {
        raw = [UNORDERED_BETS.has(betType) ? [...picks].sort((a, b) => a - b) : [...picks]];
      }
    } else if (mode === "ボックス") {
      if (boxPicks.length >= needCount) {
        raw = UNORDERED_BETS.has(betType)
          ? combinationsOf(boxPicks, needCount) : permutationsOf(boxPicks, needCount);
      }
    } else if (mode === "フォーメーション") {
      const cols = formation.slice(0, needCount);
      if (cols.every(c => c.length > 0)) {
        let acc: number[][] = [[]];
        for (const col of cols) {
          acc = acc.flatMap(prefix => col.filter(n => !prefix.includes(n)).map(n => [...prefix, n]));
        }
        raw = UNORDERED_BETS.has(betType) ? acc.map(a => [...a].sort((a, b) => a - b)) : acc;
      }
    } else { // 流し
      const A = axisPicks;
      const P = partnerPicks;
      if (betType === "馬連" || betType === "ワイド") {
        if (A.length === 1) raw = P.map(p => [A[0], p].sort((a, b) => a - b));
      } else if (betType === "3連複") {
        if (A.length === 1) raw = combinationsOf(P, 2).map(c => [A[0], ...c].sort((a, b) => a - b));
        else if (A.length === 2) raw = P.map(p => [A[0], A[1], p].sort((a, b) => a - b));
      } else if (betType === "馬単") {
        if (A.length === 1) {
          raw = P.map(p => (axisPos === 1 ? [A[0], p] : [p, A[0]]));
          if (multi) raw = [...raw, ...P.map(p => (axisPos === 1 ? [p, A[0]] : [A[0], p]))];
        }
      } else if (betType === "3連単") {
        if (A.length === 1) {
          const positions = multi ? [1, 2, 3] : [axisPos];
          for (const pos of positions) {
            for (const pair of permutationsOf(P, 2)) {
              const arr = [...pair];
              arr.splice(pos - 1, 0, A[0]);
              raw.push(arr);
            }
          }
        } else if (A.length === 2) {
          if (multi) {
            raw = P.flatMap(p => permutationsOf([A[0], A[1], p], 3));
          } else {
            const [p1, p2] = axisPosPair.split("-").map(Number);
            const restPos = [1, 2, 3].find(x => x !== p1 && x !== p2)!;
            raw = P.map(p => {
              const arr = new Array<number>(3);
              arr[p1 - 1] = A[0];
              arr[p2 - 1] = A[1];
              arr[restPos - 1] = p;
              return arr;
            });
          }
        }
      }
    }
    const seen = new Set<string>();
    const out: string[] = [];
    for (const a of raw) {
      const s = a.join("-");
      if (!seen.has(s)) { seen.add(s); out.push(s); }
    }
    return out.slice(0, 1000);
  }, [mode, betType, picks, boxPicks, axisPicks, partnerPicks, formation,
    axisPos, axisPosPair, multi, needCount]);

  // 流し・ボックス・フォーメーションの全点数分のオッズをまとめて取得する。
  useEffect(() => {
    if (mode === "通常" || !comboRaceKey || combos.length === 0 || combos.length > 300) {
      setBulkOdds({});
      setBulkStatus("idle");
      return;
    }
    let active = true;
    setBulkStatus("loading");
    fetch(`/api/combo-odds?race_key=${comboRaceKey}&bet_type=${encodeURIComponent(betType)}&selections=${encodeURIComponent(combos.join(","))}`,
      { cache: "no-store" })
      .then(async res => {
        const body: { results?: Record<string,
          { odds: number | null; oddsMax: number | null; popularity: number | null }> } = await res.json();
        if (!active) return;
        if (!res.ok) { setBulkStatus("error"); return; }
        setBulkOdds(body.results ?? {});
        setBulkStatus("ok");
      })
      .catch(() => { if (active) setBulkStatus("error"); });
    return () => { active = false; };
  }, [mode, comboRaceKey, betType, combos]);

  function clearGroups() {
    setAxisPicks([]);
    setPartnerPicks([]);
    setBoxPicks([]);
    setFormation([[], [], []]);
  }

  function handleModeChange(m: BuyMode) {
    setMode(m);
    setSelectedAi(null);
    setMessage("");
    clearGroups();
    if (m !== "通常") { setPicks([]); setOdds(""); }
  }

  // マークカード方式：列ごとの〇（チェック）で選択する。
  function toggleMark(num: number, target: string) {
    setSelectedAi(null);
    setMessage("");
    if (target === "main") {
      if (mode === "ボックス") {
        setBoxPicks(prev => (prev.includes(num) ? prev.filter(n => n !== num) : [...prev, num]));
      } else {
        togglePick(num);
      }
      return;
    }
    if (target === "axis") {
      if (partnerPicks.includes(num)) return;
      setAxisPicks(prev => (prev.includes(num) ? prev.filter(n => n !== num)
        : prev.length >= maxAxis ? prev : [...prev, num]));
      return;
    }
    if (target === "partner") {
      if (axisPicks.includes(num)) return;
      setPartnerPicks(prev => (prev.includes(num) ? prev.filter(n => n !== num) : [...prev, num]));
      return;
    }
    const idx = Number(target.slice(3));
    setFormation(prev => prev.map((col, i) => (i === idx
      ? (col.includes(num) ? col.filter(n => n !== num) : [...col, num]) : col)));
  }

  function togglePick(num: number) {
    setSelectedAi(null);
    setMessage("");
    setPicks(prev => {
      if (prev.includes(num)) return prev.filter(n => n !== num);
      if (prev.length >= needCount) return prev;
      return [...prev, num];
    });
  }

  function handleBetTypeChange(value: string) {
    setBetType(value);
    setPicks([]);
    setOdds("");
    setSelectedAi(null);
    setMessage("");
    setMode("通常");
    clearGroups();
  }

  function applyAiSelection(row: AiPrediction) {
    setMode("通常");
    clearGroups();
    setBetType("単勝");
    setPicks([row.horse_number]);
    setOdds(row.odds_at_prediction == null ? "" : String(row.odds_at_prediction));
    setSelectedAi(row);
    setMessage(`AI予測の${row.horse_number}番を買い目に入力しました。保存前に内容を確認してください。`);
  }

  async function handleSave(event: React.FormEvent<HTMLFormElement>) {
    event.preventDefault();
    if (!userId || saving || !selectedRace || !detail) return;
    const amount = Number(stake);
    const parsedOdds = odds.trim() === "" ? null : Number(odds);
    if (!Number.isInteger(amount) || amount <= 0 || amount % 100 !== 0 ||
        (parsedOdds !== null && (!Number.isFinite(parsedOdds) || parsedOdds <= 0))) {
      setMessage("入力内容を確認してください。金額は100円単位です。");
      return;
    }
    if (mode !== "通常") {
      if (combos.length === 0) {
        setMessage(mode === "流し" ? "軸馬と相手馬を選んでください。" : "買い目が生成されていません。馬を選んでください。");
        return;
      }
      setSaving(true);
      setMessage("");
      try {
        const { data: found, error: raceError } = await supabase
          .from("horse_races").select("id")
          .eq("race_date", detail.race_date).eq("venue", detail.venue.trim())
          .eq("race_number", detail.race_number).limit(2);
        if (raceError) {
          setMessage(`レース照合エラー: ${raceError.message}。保存は行っていません。`);
          return;
        }
        if (!found || found.length === 0) {
          setMessage("対応するレースがhorse_racesにありません。レースデータを登録してから予想を保存してください。");
          return;
        }
        if (found.length > 1) {
          setMessage("同じ日付・開催場・レース番号のデータが複数あります。誤った紐づけを防ぐため保存を中止しました。");
          return;
        }
        const linkedRaceId = found[0].id;
        const existing = new Set(myPredictions
          .filter(p => p.race_date === detail.race_date && p.venue === detail.venue.trim()
            && p.race_number === detail.race_number && p.bet_type === betType)
          .map(p => p.selection));
        const targets = combos.filter(sel => !existing.has(sel));
        const skipped = combos.length - targets.length;
        if (targets.length === 0) {
          setMessage("全ての組み合わせが既に保存済みです。");
          return;
        }
        const rows = targets.map(sel => ({
          user_id: userId,
          sport: "horse",
          race_date: detail.race_date,
          venue: detail.venue.trim(),
          race_number: detail.race_number,
          bet_type: betType,
          selection: sel,
          odds: bulkOdds[sel]?.odds ?? null,
          stake: amount,
          race_id: linkedRaceId,
        }));
        const { error: insertError } = await supabase.from("predictions").insert(rows);
        if (insertError) {
          setMessage("保存エラー: " + insertError.message);
        } else {
          setMessage(`保存しました！ ${mode}で${targets.length}点` + (skipped > 0 ? `（既に保存済みの${skipped}点は除きました）` : ""));
          clearGroups();
          await loadMyPredictions();
        }
      } catch (err) {
        setMessage(`通信エラー: ${err instanceof Error ? err.message : "不明なエラー"}`);
      } finally {
        setSaving(false);
      }
      return;
    }
    const result = normalizeSelection(picks.join("-"), betType);
    if (result.error || !result.value) {
      setMessage(result.error ?? (picks.length < needCount
        ? `${betType}は${needCount}頭選んでください。表の馬をタップして選びます。`
        : "買い目が正しくありません。"));
      return;
    }
    const aiReference = betType === "単勝" && selectedAi &&
      result.value === String(selectedAi.horse_number) &&
      parsedOdds === selectedAi.odds_at_prediction ? selectedAi : null;
    setSaving(true);
    setMessage("");
    try {
      const { data: found, error: raceError } = await supabase
        .from("horse_races").select("id")
        .eq("race_date", detail.race_date).eq("venue", detail.venue.trim())
        .eq("race_number", detail.race_number).limit(2);
      if (raceError) {
        setMessage(`レース照合エラー: ${raceError.message}。保存は行っていません。`);
        return;
      }
      if (!found || found.length === 0) {
        setMessage("対応するレースがhorse_racesにありません。レースデータを登録してから予想を保存してください。");
        return;
      }
      if (found.length > 1) {
        setMessage("同じ日付・開催場・レース番号のデータが複数あります。誤った紐づけを防ぐため保存を中止しました。");
        return;
      }
      const linkedRaceId = found[0].id;
      if (aiReference && aiReference.race_id !== linkedRaceId) {
        setMessage("選択したAI予測とレースが一致しません。保存を中止しました。");
        return;
      }
      if (aiReference && new Date(aiReference.created_at).getTime() > Date.now()) {
        setMessage("AI予測の生成日時が未来になっています。保存を中止しました。");
        return;
      }
      const { error: insertError } = await supabase.from("predictions").insert({
        user_id: userId,
        sport: "horse",
        race_date: detail.race_date,
        venue: detail.venue.trim(),
        race_number: detail.race_number,
        bet_type: betType,
        selection: result.value,
        odds: parsedOdds,
        stake: amount,
        race_id: linkedRaceId,
        ...(aiReference ? {
          referenced_ai_prediction_id: aiReference.id,
          referenced_ai_model_version: aiReference.model_version,
          referenced_ai_win_probability: aiReference.win_probability,
          referenced_ai_expected_return: aiReference.expected_return,
          referenced_ai_created_at: aiReference.created_at,
        } : {}),
      });
      if (insertError) {
        setMessage("保存エラー: " + insertError.message);
      } else {
        setMessage("保存しました！" + (aiReference ? " AI参照も記録済みです。" : ""));
        setPicks([]);
        setOdds("");
        setSelectedAi(null);
        await loadMyPredictions();
      }
    } catch (err) {
      setMessage(`通信エラー: ${err instanceof Error ? err.message : "不明なエラー"}`);
    } finally {
      setSaving(false);
    }
  }

  async function handleDelete(p: Prediction) {
    if (confirmDeleteId !== p.id) {
      setConfirmDeleteId(p.id);
      return;
    }
    setConfirmDeleteId(null);
    setDeletingId(p.id);
    const { error: deleteError } = await supabase.from("predictions").delete().eq("id", p.id);
    setDeletingId(null);
    if (deleteError) {
      setMessage("削除エラー: " + deleteError.message);
    } else {
      setMyPredictions(prev => prev.filter(item => item.id !== p.id));
      setMessage("予想を削除しました。");
    }
  }

  async function handleAdvice(predictionId: string) {
    if (adviceLoadingId) return;
    setAdviceLoadingId(predictionId);
    try {
      const response = await fetch("/api/bet-advice", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ prediction_id: predictionId }),
      });
      const result = await response.json();
      setAdviceById(prev => ({
        ...prev,
        [predictionId]: response.ok ? result.advice : `分析できません: ${result.error ?? "不明なエラー"}`,
      }));
    } catch {
      setAdviceById(prev => ({ ...prev, [predictionId]: "通信エラーが発生しました" }));
    } finally {
      setAdviceLoadingId(null);
    }
  }

  const [mobileNav, setMobileNav] = useState(false);
  const entries = (detail?.horse_entries ?? []).filter(h => h.entry_status === "entered");
  const sortedEntries = [...entries].sort((a, b) => (a.horse_number ?? 999) - (b.horse_number ?? 999));
  const thisRacePredictions = myPredictions.filter(p => detail &&
    p.race_date === detail.race_date && p.venue === detail.venue && p.race_number === detail.race_number);
  const otherPredictions = myPredictions.filter(p => !(detail &&
    p.race_date === detail.race_date && p.venue === detail.venue && p.race_number === detail.race_number));
  const otherGroups = new Map<string, Prediction[]>();
  for (const p of otherPredictions) {
    const key = `${p.race_date}|${p.venue}|${p.race_number}`;
    otherGroups.set(key, [...(otherGroups.get(key) ?? []), p]);
  }
  const nav = [
    { href: "/", label: "ダッシュボード", symbol: "⌂" },
    { href: "/races/auto", label: "レース一覧", symbol: "▤" },
    { href: "/races/horse", label: "AI予測", symbol: "◎" },
    { href: "/review", label: "予測レビュー", symbol: "▥" },
    { href: "/ranking", label: "ランキング", symbol: "▦" },
    { href: "/mypage", label: "マイページ", symbol: "◇" },
  ];

  function predictionCard(p: Prediction, withNames: boolean) {
    return (
      <section key={p.id} className="predcard">
        <div className="predhead">
          <strong>{p.venue} {p.race_number}R{(() => { const rn = races.find(r => r.race_date === p.race_date && r.venue === p.venue && r.race_number === p.race_number)?.race_name; return rn ? ` ${rn}` : ""; })()}</strong>
          <span style={{ display: "inline-flex", gap: 10, alignItems: "center" }}>
            <span className="muted">{p.race_date} / {p.bet_type}</span>
            <button type="button" className={confirmDeleteId === p.id ? "delbtn confirm" : "delbtn"}
              disabled={deletingId !== null} onClick={() => void handleDelete(p)}>
              {deletingId === p.id ? "削除中..." : confirmDeleteId === p.id ? "本当に削除する" : "削除"}
            </button>
          </span>
        </div>
        <p className="predsel">買い目：{p.selection.split("-").map(part => {
          const n = Number(part);
          return withNames && nameByNumber.get(n) ? `${n} ${nameByNumber.get(n)}` : part;
        }).join(" - ")}</p>
        {p.referenced_ai_prediction_id && p.referenced_ai_model_version === FIXED_MODEL_VERSION && (
          <p className="airef">AI参照保存済：勝率 {p.referenced_ai_win_probability == null ? "－" : (p.referenced_ai_win_probability * 100).toFixed(1) + "%"} / 期待回収率 {p.referenced_ai_expected_return == null ? "－" : (p.referenced_ai_expected_return * 100).toFixed(1) + "%"}</p>
        )}
        <p>{p.stake.toLocaleString()}円{p.odds !== null ? ` / オッズ ${p.odds}` : ""}</p>
        {p.sport === "horse" && (
          <div style={{ marginTop: 10 }}>
            <button type="button" className="detailbtn" disabled={adviceLoadingId !== null}
              onClick={() => void handleAdvice(p.id)}>
              {adviceLoadingId === p.id ? "AI評価中..." : "AIにこの買い目を評価させる"}
            </button>
            {adviceById[p.id] && <p role="status" className="advicetext">{adviceById[p.id]}</p>}
          </div>
        )}
      </section>
    );
  }

  return (
    <div className="rl-pred">
      <style>{`
        .rl-pred{--bg:var(--rl-bg);--panel:var(--rl-panel);--line:var(--rl-border);--muted:var(--rl-muted);--green:var(--rl-accent-bright);min-height:100vh;background:var(--bg);color:var(--rl-text);font-family:Arial,'Noto Sans JP',sans-serif}
        .rl-pred *{box-sizing:border-box}.rl-pred a{text-decoration:none;color:inherit}.rl-pred button,.rl-pred select,.rl-pred input{font:inherit}.rl-pred button{cursor:pointer}
        .rl-pred .side{width:224px;position:fixed;inset:0 auto 0 0;border-right:1px solid var(--line);background:var(--rl-panel);z-index:20;padding:24px 13px}
        .rl-pred .brand{color:var(--green);font-weight:900;letter-spacing:2px;margin:0 7px 36px;font-size:16px}.rl-pred .sidecap{font-size:10px;letter-spacing:2px;color:var(--rl-muted);margin:0 10px 15px;font-weight:800}
        .rl-pred .navlink{display:flex;gap:13px;align-items:center;padding:14px 12px;border-radius:8px;color:var(--rl-sub);font-size:13px;font-weight:700;margin:3px 0}.rl-pred .navlink.active{background:var(--rl-accent-bg);color:var(--green);border-left:2px solid var(--green)}
        .rl-pred .workspace{margin-left:224px;min-width:0}.rl-pred .topbar{height:58px;border-bottom:1px solid var(--line);display:flex;align-items:center;justify-content:space-between;padding:0 35px;color:var(--rl-muted);font-size:10px;letter-spacing:1.8px;font-weight:800}
        .rl-pred .content{max-width:1440px;margin:0 auto;padding:36px 38px 130px}.rl-pred .eyebrow{color:var(--green);font-size:10px;font-weight:900;letter-spacing:2px}.rl-pred h1{font-size:32px;margin:14px 0 8px;letter-spacing:-.5px}.rl-pred .sub{color:var(--muted);font-size:13px;line-height:1.7}
        .rl-pred .sectionhead{font-size:13px;font-weight:800;margin:26px 0 13px}.rl-pred .sectionhead b{color:var(--green);margin-right:12px;font-size:11px}.rl-pred .panel{border:1px solid var(--line);background:var(--panel);border-radius:12px;padding:20px}
        .rl-pred .selectors{display:flex;flex-wrap:wrap;gap:24px;align-items:end}.rl-pred .fieldlabel{display:block;color:var(--rl-muted);font-size:11px;font-weight:700;margin-bottom:9px}.rl-pred select{min-width:170px;padding:12px;background:var(--rl-panel);color:var(--rl-text);border:1px solid var(--rl-border);border-radius:8px}
        .rl-pred .chips{display:flex;flex-wrap:wrap;gap:8px}.rl-pred .chip{background:var(--rl-hover);color:var(--rl-text);border:1px solid var(--rl-border);padding:11px 15px;border-radius:8px;font-weight:800;font-size:12px}.rl-pred .chip.on{background:var(--green);color:var(--rl-accent-bg);border-color:var(--green)}
        .rl-pred .metrics{display:grid;grid-template-columns:repeat(4,minmax(0,1fr));gap:12px;margin-top:16px}.rl-pred .metric{background:var(--panel);border:1px solid var(--line);border-radius:10px;padding:18px}.rl-pred .metric .k{color:var(--rl-sub);font-size:10px;letter-spacing:1px;font-weight:800}.rl-pred .metric .v{font-size:23px;font-weight:900;margin-top:12px}.rl-pred .metric .v.small{font-size:14px}
        .rl-pred .tablewrap{overflow-x:auto;border:1px solid var(--line);border-radius:12px;background:var(--panel)}.rl-pred table{border-collapse:collapse;width:100%;min-width:640px}.rl-pred th,.rl-pred td{border-right:1px solid var(--rl-border)}.rl-pred th:last-child,.rl-pred td:last-child{border-right:0}.rl-pred th{text-align:left;color:var(--rl-muted);background:var(--rl-panel);font-size:11px;padding:15px 12px;border-bottom:1px solid var(--line);white-space:nowrap}.rl-pred td{padding:13px 12px;border-bottom:1px solid var(--rl-border);font-size:12px;vertical-align:middle}.rl-pred tr:last-child td{border-bottom:0}.rl-pred tbody tr{cursor:pointer}.rl-pred tbody tr:hover{background:var(--rl-hover)}.rl-pred tbody tr.picked{background:var(--rl-accent-bg)}
        .rl-pred .horse{font-weight:800;color:var(--rl-text)}.rl-pred .number{font-weight:900;color:var(--green)}.rl-pred .muted{color:var(--rl-muted)}.rl-pred .orderbadge{display:inline-block;min-width:20px;text-align:center;background:var(--green);color:var(--rl-accent-bg);border-radius:10px;font-size:11px;font-weight:900;padding:2px 6px;margin-left:8px}
        .rl-pred .detailbtn{border:1px solid var(--rl-border);background:var(--rl-hover);color:var(--rl-accent-bright);border-radius:6px;padding:7px 9px;font-size:11px}.rl-pred .aibtn{border:1px solid var(--green);background:transparent;color:var(--green);border-radius:6px;padding:6px 8px;font-size:11px;font-weight:800;white-space:nowrap}
        .rl-pred .racesummary{margin-top:14px;padding-top:12px;border-top:1px solid var(--line);display:flex;justify-content:space-between;gap:12px;flex-wrap:wrap;align-items:center;font-size:13px}.rl-pred .stickybar{position:fixed;left:0;right:0;bottom:0;z-index:30;background:var(--rl-panel);border-top:1px solid var(--line);padding:10px 16px;display:flex;gap:14px;align-items:center;justify-content:space-between;box-shadow:0 -4px 18px rgba(0,0,0,.16)}.rl-pred .stickyinfo{display:flex;flex-direction:column;gap:2px;font-size:13px;min-width:0}.rl-pred .stickyinfo span{color:var(--rl-muted)}.rl-pred .stickyinfo .stickymsg{color:var(--green);font-weight:700}.rl-pred .stickybar .primary{margin:0;white-space:nowrap;padding:11px 20px}@media(min-width:900px){.rl-pred .stickybar{left:224px}}.rl-pred .markcell{text-align:center}.rl-pred .markbtn{width:28px;height:28px;border-radius:50%;border:2px solid var(--rl-muted);background:transparent;color:transparent;font-size:14px;font-weight:900;line-height:1;padding:0;cursor:pointer}.rl-pred .markbtn.on{background:var(--green);border-color:var(--green);color:#fff}.rl-pred .combopreview{max-height:190px;overflow-y:auto;border:1px solid var(--line);border-radius:10px;padding:8px 12px;margin-top:10px}.rl-pred .comborow{display:flex;justify-content:space-between;gap:12px;padding:5px 0;font-size:12px;border-bottom:1px dashed var(--rl-border)}.rl-pred .comborow:last-child{border-bottom:0}.rl-pred .pickbar{display:flex;flex-wrap:wrap;gap:8px;align-items:center;margin:16px 0}.rl-pred .pickchip{display:inline-flex;gap:8px;align-items:center;background:var(--rl-accent-bg);color:var(--rl-text);border:1px solid var(--green);border-radius:8px;padding:9px 12px;font-weight:800;font-size:12px}.rl-pred .pickchip button{background:none;border:0;color:var(--green);font-weight:900;padding:0}
        .rl-pred .formgrid{display:grid;grid-template-columns:1fr 1fr;gap:16px;margin-top:6px}.rl-pred .numinput{width:100%;padding:12px;background:var(--rl-bg);color:var(--rl-text);border:1px solid var(--rl-border);border-radius:8px;margin-top:6px}
        .rl-pred .primary{background:var(--green);color:var(--rl-accent-bg);padding:14px 17px;border-radius:8px;font-weight:900;font-size:13px;border:0;width:100%;margin-top:18px}.rl-pred .primary:disabled{opacity:.55;cursor:wait}
        .rl-pred .notice{border:1px solid var(--rl-accent-bg);background:var(--rl-panel);border-radius:10px;padding:14px 18px;color:var(--rl-accent-bright);font-size:12px;margin-top:18px}.rl-pred .alert{border-color:var(--rl-danger-border);background:var(--rl-panel);color:var(--rl-danger-text)}
        .rl-pred .airef{color:var(--rl-accent-bright);font-size:12px}.rl-pred .delbtn{border:1px solid var(--rl-border);background:transparent;color:var(--rl-muted);border-radius:6px;padding:5px 9px;font-size:11px}.rl-pred .delbtn.confirm{border-color:var(--rl-danger-border);color:var(--rl-danger-text);font-weight:800}.rl-pred .predcard{border:1px solid var(--line);background:var(--panel);border-radius:12px;padding:18px;margin-bottom:12px}.rl-pred .predhead{display:flex;justify-content:space-between;gap:12px;flex-wrap:wrap}.rl-pred .predsel{font-weight:800;margin-top:8px}.rl-pred .advicetext{white-space:pre-wrap;margin-top:12px;line-height:1.7}
        .rl-pred .mobilemenu{display:none}.rl-pred .empty{padding:34px;text-align:center;color:var(--rl-muted)}
        @media(max-width:1050px){.rl-pred .metrics{grid-template-columns:repeat(2,minmax(0,1fr))}.rl-pred .content{padding:28px 22px 120px}}
        @media(max-width:720px){.rl-pred .side{display:none;width:230px}.rl-pred .side.open{display:block}.rl-pred .workspace{margin-left:0}.rl-pred .topbar{padding:0 18px}.rl-pred .mobilemenu{display:inline-flex;border:1px solid var(--rl-border);background:var(--rl-hover);color:var(--rl-accent-bright);border-radius:7px;padding:8px 12px}.rl-pred .content{padding:25px 15px 50px}.rl-pred h1{font-size:27px}.rl-pred .panel{padding:15px}.rl-pred .formgrid{grid-template-columns:1fr}.rl-pred .metrics{gap:8px}.rl-pred .metric{padding:13px}.rl-pred .metric .v{font-size:19px}}
      `}</style>
      <aside className={`side ${mobileNav ? "open" : ""}`}>
        <div className="brand">RACE LAB.</div>
        <div className="sidecap">WORKSPACE</div>
        {nav.map(n => <a key={n.href} href={n.href} className="navlink"><span>{n.symbol}</span>{n.label}</a>)}
      </aside>
      <div className="workspace">
        <div className="topbar"><span><button className="mobilemenu" onClick={() => setMobileNav(v => !v)} aria-expanded={mobileNav}>☰</button> &nbsp; WORKSPACE　/　PREDICTION ENTRY</span><a href="/">OVERVIEW ↗</a></div>
        <main className="content">
          <div className="eyebrow">● RACE INTELLIGENCE / MY PREDICTION</div>
          <h1>予想登録<span style={{ color: "var(--green)" }}>.</span></h1>
          <p className="sub">出走馬とオッズ、AI予測を見ながら、タップで買い目を組んで保存できます。</p>
          {loadingList && <div className="notice">レース一覧を取得しています...</div>}
          {error && <div className="notice alert" role="alert">エラー：{error}</div>}
          {!loadingList && !error && dates.length === 0 && <div className="notice">登録されたレースはありません。</div>}
          {dates.length > 0 && <>
            <div className="sectionhead"><b>01</b> レースを選択</div>
            <section className="panel">
              <div className="selectors">
                <div><label htmlFor="pred-date" className="fieldlabel">開催日</label><select id="pred-date" value={selectedDate} onChange={e => { setDate(e.target.value); setVenue(""); setRaceNumber(null); }}>{dates.map(d => <option key={d} value={d}>{d}</option>)}</select></div>
                <div><span className="fieldlabel">競馬場</span><div className="chips">{venues.map(v => <button key={v} className={`chip ${selectedVenue === v ? "on" : ""}`} aria-pressed={selectedVenue === v} onClick={() => { setVenue(v); setRaceNumber(null); }}>{v}</button>)}</div></div>
                <div><span className="fieldlabel">レース</span><div className="chips">{availableRaces.map(r => <button key={r.id} className={`chip ${selectedRace?.id === r.id ? "on" : ""}`} aria-pressed={selectedRace?.id === r.id} onClick={() => setRaceNumber(r.race_number)}>{r.race_number}R{r.race_name ? ` ${r.race_name}` : ""}</button>)}</div></div>
              </div>
              {detail && !loadingDetail && (
                <div className="racesummary">
                  <span><strong>{detail.venue} {detail.race_number}R{detail.race_name ? ` ${detail.race_name}` : ""}</strong><span className="muted">　{detail.surface ?? ""}{detail.distance ? `${detail.distance}m` : ""}　馬場：{detail.track_condition ?? "未登録"}　発走：{detail.starts_at ? new Date(detail.starts_at).toLocaleTimeString("ja-JP", { timeZone: "Asia/Tokyo", hour: "2-digit", minute: "2-digit" }) : "未登録"}　{entries.length}頭　オッズ取得：{latestOddsTime ? new Date(latestOddsTime).toLocaleString("ja-JP", { timeZone: "Asia/Tokyo", month: "numeric", day: "numeric", hour: "2-digit", minute: "2-digit" }) : "未取得"}</span></span>
                  <a className="detailbtn" href={`/races/horse?date=${detail.race_date}&venue=${encodeURIComponent(detail.venue)}&race=${detail.race_number}`}>AI予測・出馬表で見る ↗</a>
                </div>
              )}
            </section>
          </>}
          {loadingDetail && <div className="notice">選択レースの詳細を取得しています...</div>}
          {detail && !loadingDetail && <>
            <div className="sectionhead"><b>02</b> 買い目を作る</div>
            <section className="panel">
              <span className="fieldlabel">券種</span>
              <div className="chips">{BET_TYPES.map(t => <button key={t} type="button" className={`chip ${betType === t ? "on" : ""}`} aria-pressed={betType === t} onClick={() => handleBetTypeChange(t)}>{t}</button>)}</div>
              {betType !== "単勝" && betType !== "複勝" && <>
                <span className="fieldlabel" style={{ marginTop: 14 }}>買い方（JRA方式）</span>
                <div className="chips">{(["通常", "流し", "ボックス", ...((betType === "馬単" || betType === "3連複" || betType === "3連単") ? ["フォーメーション"] : [])] as BuyMode[]).map(m => <button key={m} type="button" className={`chip ${mode === m ? "on" : ""}`} aria-pressed={mode === m} onClick={() => handleModeChange(m)}>{m}</button>)}</div>
              </>}
              {mode === "流し" && <>
                {(betType === "馬単" || (betType === "3連単" && axisPicks.length === 1)) && (
                  <div className="chips" style={{ marginTop: 10 }}>
                    <span className="sub" style={{ margin: 0 }}>軸の着順：</span>
                    {(betType === "馬単" ? [1, 2] : [1, 2, 3]).map(p => <button key={p} type="button" className={`chip ${axisPos === p ? "on" : ""}`} onClick={() => setAxisPos(p)}>{p}着固定</button>)}
                  </div>
                )}
                {betType === "3連単" && axisPicks.length === 2 && !multi && (
                  <div className="chips" style={{ marginTop: 10 }}>
                    <span className="sub" style={{ margin: 0 }}>軸2頭の着順：</span>
                    {["1-2", "1-3", "2-3"].map(pp => <button key={pp} type="button" className={`chip ${axisPosPair === pp ? "on" : ""}`} onClick={() => setAxisPosPair(pp)}>{pp.replace("-", "着・")}着に固定</button>)}
                  </div>
                )}
                {(betType === "馬単" || betType === "3連単") && (
                  <div className="chips" style={{ marginTop: 10 }}>
                    <button type="button" className={`chip ${multi ? "on" : ""}`} aria-pressed={multi} onClick={() => setMulti(v => !v)}>マルチ（軸と相手の着順を入れ替えた組み合わせも買う）</button>
                  </div>
                )}
              </>}
              <p className="sub" style={{ marginTop: 12 }}>
                {mode === "通常" && <>{betType}は{needCount}頭選びます。「選択」列の〇にチェックを入れてください{ORDERED_BETS.has(betType) ? "（チェックした順番が着順指定になります）" : ""}。</>}
                {mode === "流し" && <>軸馬を固定し、相手馬との全組み合わせを自動生成します。「軸」「相手」の列の〇にチェックを入れてください（軸は{maxAxis}頭まで）。</>}
                {mode === "ボックス" && <>選んだ馬の全組み合わせを買います。「選択」列の〇にチェックを入れて{needCount}頭以上選んでください。</>}
                {mode === "フォーメーション" && <>{betType === "3連複" ? "グループ" : "着順"}ごとの列の〇にチェックを入れて、候補馬を選んでください。</>}
              </p>
              {aiMessage && <p className="sub" role="status">{aiMessage}</p>}
              <div className="chips" style={{ marginTop: 10 }}>
                <button type="button" className={`chip ${showAi ? "on" : ""}`} aria-pressed={showAi} onClick={() => setShowAi(v => !v)}>AI予測を表示（勝率・期待回収率・評価）</button>
              </div>
              <div className="tablewrap" style={{ marginTop: 12 }}><table><thead><tr>{["枠", "馬番", ...(mode === "流し" ? ["軸", "相手"] : mode === "フォーメーション" ? formation.slice(0, needCount).map((_, i) => (betType === "3連複" ? `${i + 1}G` : `${i + 1}着`)) : ["選択"]), "馬名", "騎手", "人気", "単勝オッズ", ...(showAi ? ["AI勝率", "期待回収率", "AI評価", ""] : [])].map(h => <th key={h}>{h}</th>)}</tr></thead><tbody>
                {sortedEntries.map(h => {
                  const num = h.horse_number ?? -1;
                  const pred = aiByHorse.get(num);
                  const wo = winOdds.get(num);
                  const pickIndex = mode === "通常" ? picks.indexOf(num) : -1;
                  const axisIndex = mode === "流し" ? axisPicks.indexOf(num) : -1;
                  const isPartner = mode === "流し" && partnerPicks.includes(num);
                  const isBox = mode === "ボックス" && boxPicks.includes(num);
                  const formCols = mode === "フォーメーション"
                    ? formation.map((c, i) => (c.includes(num) ? i + 1 : null)).filter((v): v is number => v !== null)
                    : [];
                  const rowPicked = pickIndex >= 0 || axisIndex >= 0 || isPartner || isBox || formCols.length > 0;
                  return (
                    <tr key={h.id} className={rowPicked ? "picked" : ""} onClick={() => { if (h.horse_number !== null && (mode === "通常" || mode === "ボックス")) toggleMark(h.horse_number, "main"); }}>
                      <td>{h.bracket_number ?? "-"}</td>
                      <td className="number">{h.horse_number ?? "未定"}{pickIndex >= 0 && ORDERED_BETS.has(betType) && <span className="orderbadge">{pickIndex + 1}</span>}</td>
                      {mode === "流し" && <>
                        <td className="markcell"><button type="button" className={axisIndex >= 0 ? "markbtn on" : "markbtn"} aria-label={`${num}番を軸にする`} onClick={e => { e.stopPropagation(); toggleMark(num, "axis"); }}>✓</button></td>
                        <td className="markcell"><button type="button" className={isPartner ? "markbtn on" : "markbtn"} aria-label={`${num}番を相手にする`} onClick={e => { e.stopPropagation(); toggleMark(num, "partner"); }}>✓</button></td>
                      </>}
                      {mode === "フォーメーション" && formation.slice(0, needCount).map((col, i) => (
                        <td key={i} className="markcell"><button type="button" className={col.includes(num) ? "markbtn on" : "markbtn"} aria-label={`${num}番を${i + 1}列に入れる`} onClick={e => { e.stopPropagation(); toggleMark(num, `col${i}`); }}>✓</button></td>
                      ))}
                      {(mode === "通常" || mode === "ボックス") && (
                        <td className="markcell"><button type="button" className={pickIndex >= 0 || isBox ? "markbtn on" : "markbtn"} aria-label={`${num}番を選択`} onClick={e => { e.stopPropagation(); toggleMark(num, "main"); }}>✓</button></td>
                      )}
                      <td><span className="horse">{h.horse_name}</span>{(h.horse_sex || h.horse_age) && <span className="muted" style={{ fontSize: 11 }}> {h.horse_sex ?? ""}{h.horse_age ?? ""}</span>}</td>
                      <td>{h.jockey_name ?? "-"}</td>
                      <td>{h.popularity ?? "-"}</td>
                      <td>{wo ? Number(wo.odds).toFixed(1) : "未取得"}</td>
                      {showAi && <>
                        <td>{pred ? `${(pred.win_probability * 100).toFixed(1)}%` : "-"}</td>
                        <td>{pred?.expected_return != null ? `${(pred.expected_return * 100).toFixed(1)}%` : "-"}</td>
                        <td>{pred ? pred.recommendation : "-"}</td>
                        <td>{pred && <button type="button" className="aibtn" onClick={(e) => { e.stopPropagation(); applyAiSelection(pred); }}>AIで選択</button>}</td>
                      </>}
                    </tr>
                  );
                })}
              </tbody></table>{entries.length === 0 && <div className="empty">出走馬はまだ登録されていません。</div>}</div>

              <form id="pred-form" onSubmit={handleSave}>
                {mode === "通常" && (
                  <div className="pickbar">
                    <span className="fieldlabel" style={{ margin: 0 }}>選択中の買い目（{picks.length}/{needCount}頭）</span>
                    {picks.length === 0 && <span className="muted">まだ選んでいません</span>}
                    {picks.map((n, i) => (
                      <span key={n} className="pickchip">{ORDERED_BETS.has(betType) ? `${i + 1}. ` : ""}{n} {nameByNumber.get(n) ?? ""}<button type="button" aria-label={`${n}番を外す`} onClick={() => togglePick(n)}>×</button></span>
                    ))}
                  </div>
                )}
                {mode === "流し" && (
                  <div className="pickbar">
                    <span className="fieldlabel" style={{ margin: 0 }}>軸馬</span>
                    {axisPicks.length === 0 && <span className="muted">未選択</span>}
                    {axisPicks.map((n, i) => (
                      <span key={n} className="pickchip">{maxAxis > 1 ? `軸${i + 1} ` : ""}{n} {nameByNumber.get(n) ?? ""}<button type="button" aria-label={`${n}番を外す`} onClick={() => setAxisPicks(prev => prev.filter(x => x !== n))}>×</button></span>
                    ))}
                    <span className="fieldlabel" style={{ margin: 0 }}>相手馬</span>
                    {partnerPicks.length === 0 && <span className="muted">未選択</span>}
                    {partnerPicks.map(n => (
                      <span key={n} className="pickchip">{n} {nameByNumber.get(n) ?? ""}<button type="button" aria-label={`${n}番を外す`} onClick={() => setPartnerPicks(prev => prev.filter(x => x !== n))}>×</button></span>
                    ))}
                  </div>
                )}
                {mode === "ボックス" && (
                  <div className="pickbar">
                    <span className="fieldlabel" style={{ margin: 0 }}>ボックス（{boxPicks.length}頭）</span>
                    {boxPicks.length === 0 && <span className="muted">まだ選んでいません</span>}
                    {boxPicks.map(n => (
                      <span key={n} className="pickchip">{n} {nameByNumber.get(n) ?? ""}<button type="button" aria-label={`${n}番を外す`} onClick={() => setBoxPicks(prev => prev.filter(x => x !== n))}>×</button></span>
                    ))}
                  </div>
                )}
                {mode === "フォーメーション" && (
                  <div className="pickbar">
                    {formation.slice(0, needCount).map((col, i) => (
                      <span key={i} style={{ display: "inline-flex", gap: 8, alignItems: "center", flexWrap: "wrap" }}>
                        <span className="fieldlabel" style={{ margin: 0 }}>{betType === "3連複" ? `${i + 1}グループ` : `${i + 1}着`}</span>
                        {col.length === 0 && <span className="muted">未選択</span>}
                        {col.map(n => (
                          <span key={n} className="pickchip">{n} {nameByNumber.get(n) ?? ""}<button type="button" aria-label={`${n}番を外す`} onClick={() => setFormation(prev => prev.map((c, ci) => (ci === i ? c.filter(x => x !== n) : c)))}>×</button></span>
                        ))}
                      </span>
                    ))}
                  </div>
                )}
                {selectedAi && (
                  <p className="airef">AI参照中：{selectedAi.horse_number}番 / {selectedAi.model_version}（買い目やオッズを変更すると参照を解除します）</p>
                )}
                <div className="formgrid">
                  {mode === "通常" && (
                    <label>オッズ（任意・選択すると自動入力）
                      <input className="numinput" type="number" min="0.01" step="any" value={odds}
                        onChange={e => { setOdds(e.target.value); setSelectedAi(null); }} />
                    </label>
                  )}
                  <label>仮想購入金額（円・100円単位{mode !== "通常" ? "・1点あたり" : ""}）
                    <input className="numinput" type="number" min="100" step="100" required value={stake}
                      onChange={e => setStake(e.target.value)} />
                  </label>
                </div>
                {mode !== "通常" && (
                  <div style={{ marginTop: 12 }}>
                    <p className="sub">生成された買い目：<strong>{combos.length}点</strong>{combos.length > 0 && <> × {(Number(stake) || 0).toLocaleString()}円 = 合計 <strong>{(combos.length * (Number(stake) || 0)).toLocaleString()}円</strong></>}</p>
                    {bulkStatus === "loading" && <p className="sub">オッズを取得しています...</p>}
                    {bulkStatus === "error" && <p className="sub">オッズを取得できませんでした（PC側に接続できません）。オッズなしで保存されます。</p>}
                    {combos.length > 300 && <p className="sub">点数が多いため、各点のオッズ表示は省略されます。</p>}
                    {combos.length > 0 && combos.length <= 300 && (
                      <button type="button" className="detailbtn" style={{ marginTop: 10 }} onClick={() => setShowCombos(v => !v)}>{showCombos ? "買い目一覧を隠す" : `買い目一覧とオッズを表示（${combos.length}点）`}</button>
                    )}
                    {showCombos && combos.length > 0 && combos.length <= 300 && (
                      <div className="combopreview">
                        {combos.map(sel => {
                          const o = bulkOdds[sel];
                          return (
                            <div key={sel} className="comborow">
                              <span>{sel.split("-").map(n => `${n} ${nameByNumber.get(Number(n)) ?? ""}`).join("　-　")}</span>
                              <span>{o?.odds != null ? `${o.odds.toFixed(1)}${o.oddsMax != null ? `〜${o.oddsMax.toFixed(1)}` : ""}倍${o.popularity != null ? `（${o.popularity}番人気）` : ""}` : bulkStatus === "ok" ? "未取得" : ""}</span>
                            </div>
                          );
                        })}
                      </div>
                    )}
                  </div>
                )}
                {betType !== "単勝" && betType !== "複勝" && picks.length === needCount && combo.status !== "idle" && (
                  <p className="sub" style={{ marginTop: 10 }}>
                    {combo.status === "loading" && "現在のオッズを取得しています..."}
                    {combo.status === "ok" && <>現在の{betType}オッズ：<strong>{combo.odds != null ? combo.odds.toFixed(1) : "―"}{combo.oddsMax != null ? `〜${combo.oddsMax.toFixed(1)}` : ""}倍</strong>{combo.popularity != null ? `（${combo.popularity}番人気）` : ""}{combo.fetchedAt ? ` ・ ${new Date(combo.fetchedAt).toLocaleString("ja-JP", { timeZone: "Asia/Tokyo", month: "numeric", day: "numeric", hour: "2-digit", minute: "2-digit" })}時点` : ""}</>}
                    {combo.status === "missing" && "この組み合わせのオッズは取得できませんでした（発売前または対象外のレースです）。"}
                    {combo.status === "error" && "オッズを取得できませんでした（PC側の取得機能に接続できません）。"}
                  </p>
                )}
                <div className="chips" style={{ marginTop: 10 }}>{STAKE_PRESETS.map(v => <button key={v} type="button" className={`chip ${Number(stake) === v ? "on" : ""}`} onClick={() => setStake(String(v))}>{v.toLocaleString()}円</button>)}</div>
                <button type="submit" className="primary" disabled={saving}>{saving ? "保存中..." : mode !== "通常" ? `予想を保存する（${combos.length}点）` : "予想を保存する"}</button>
              </form>
              {message && <p role="status" style={{ marginTop: 14 }}>{message}</p>}
            </section>

            <div className="sectionhead"><b>03</b> このレースの自分の予想（{thisRacePredictions.length}件）</div>
            {thisRacePredictions.length === 0 && <p className="sub">このレースにはまだ予想を保存していません。</p>}
            {thisRacePredictions.map(p => predictionCard(p, true))}
          </>}
          {otherGroups.size > 0 && <>
            <div className="sectionhead"><b>04</b> その他の自分の予想（{otherPredictions.length}件）</div>
            {[...otherGroups.entries()].map(([key, group]) => (
              <div key={key}>
                <p className="sub" style={{ margin: "14px 0 8px" }}>{group[0].race_date}　{group[0].venue} {group[0].race_number}R{(() => { const g0 = group[0]; const rn = races.find(r => r.race_date === g0.race_date && r.venue === g0.venue && r.race_number === g0.race_number)?.race_name; return rn ? ` ${rn}` : ""; })()}</p>
                {group.map(p => predictionCard(p, false))}
              </div>
            ))}
          </>}
          {myPredictions.length === 0 && !loadingList && <p className="sub">まだ予想がありません。</p>}
        </main>
        {detail && !loadingDetail && (
          <div className="stickybar">
            <div className="stickyinfo">
              <strong>{detail.venue} {detail.race_number}R / {betType}{mode !== "通常" ? `・${mode}` : ""}</strong>
              <span>{mode === "通常"
                ? (picks.length > 0 ? `${picks.map(n => `${n} ${nameByNumber.get(n) ?? ""}`).join(" - ")} / ${(Number(stake) || 0).toLocaleString()}円` : "表の〇にチェックを入れてください")
                : (combos.length > 0 ? `${combos.length}点 × ${(Number(stake) || 0).toLocaleString()}円 = 合計 ${(combos.length * (Number(stake) || 0)).toLocaleString()}円` : "軸・相手（または候補）を選んでください")}</span>
              {message && <span className="stickymsg">{message}</span>}
            </div>
            <button type="submit" form="pred-form" className="primary" disabled={saving}>{saving ? "保存中..." : "予想を保存する"}</button>
          </div>
        )}
      </div>
    </div>
  );
}
