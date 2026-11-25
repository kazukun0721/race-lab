
"use client";

import { FIXED_MODEL_VERSION } from "@/lib/fixed-model";


import { useCallback, useEffect, useState } from "react";
import { useRouter, useSearchParams } from "next/navigation";
import { createClient } from "@/lib/supabase/client";
import { Suspense } from "react";
type Sport = "horse" | "boat";

type RegisteredRace = {
  id: string;
  race_date: string;
  venue: string;
  race_number: number;
  race_name: string | null;
  is_test: boolean;
  data_source: string | null;
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
  sport: Sport;
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


const VENUES: Record<Sport, string[]> = {
  horse: ["テスト東京",
    "札幌",
    "函館",
    "福島",
    "新潟",
    "中山",
    "東京",
    "中京",
    "京都",
    "阪神",
    "小倉",
  ],
  boat: [
    "桐生", "戸田", "江戸川", "平和島", "多摩川",
    "浜名湖", "蒲郡", "常滑", "津", "三国",
    "びわこ", "住之江", "尼崎", "鳴門", "丸亀",
    "児島", "宮島", "徳山", "下関", "若松",
    "芦屋", "福岡", "唐津", "大村",
  ],
};


const BET_TYPES: Record<Sport, string[]> = {
  horse: [
    "単勝",
    "複勝",
    "馬連",
    "馬単",
    "ワイド",
    "3連複",
    "3連単",
  ],
  boat: [
    "単勝",
    "複勝",
    "2連複",
    "2連単",
    "拡連複",
    "3連複",
    "3連単",
  ],
};

const BET_COUNTS: Record<string, number> = {
  単勝: 1,
  複勝: 1,
  馬連: 2,
  馬単: 2,
  ワイド: 2,
  "2連複": 2,
  "2連単": 2,
  拡連複: 2,
  "3連複": 3,
  "3連単": 3,
};

const UNORDERED_BETS = new Set([
  "馬連",
  "ワイド",
  "3連複",
  "2連複",
  "拡連複",
]);

function normalizeSelection(
  value: string,
  sport: Sport,
  betType: string
): { value?: string; error?: string } {
  const count = BET_COUNTS[betType];

  if (!count || !BET_TYPES[sport].includes(betType)) {
    return { error: "対応していない券種です。" };
  }

  // 全角数字を半角数字に変換
  const normalized = value
    .trim()
    .replace(/[０-９]/g, (char) =>
      String(char.charCodeAt(0) - 0xff10)
    )
    .replace(/[－ー−]/g, "-")
    .replace(/\s+/g, "");

  if (!/^\d+(?:-\d+)*$/.test(normalized)) {
    return {
      error: "買い目は「1」または「1-2-3」の形式で入力してください。",
    };
  }

  const parts = normalized.split("-").map(Number);

  if (parts.length !== count) {
    return {
      error: `${betType}は${count}つの番号を入力してください。`,
    };
  }

  const maxNumber = sport === "boat" ? 6 : 18;

  if (
    parts.some(
      (number) =>
        !Number.isInteger(number) ||
        number < 1 ||
        number > maxNumber
    )
  ) {
    return {
      error: `番号は1～${maxNumber}の範囲で入力してください。`,
    };
  }

  if (new Set(parts).size !== parts.length) {
    return {
      error: "同じ番号を重複して指定することはできません。",
    };
  }

  if (UNORDERED_BETS.has(betType)) {
    parts.sort((a, b) => a - b);
  }

  return { value: parts.join("-") };
}

function PredictionsContent() {
  const router = useRouter();
  const searchParams = useSearchParams();
  const [supabase] = useState(() => createClient());

  const [userId, setUserId] = useState("");
  const [predictions, setPredictions] = useState<Prediction[]>([]);
  const [loading, setLoading] = useState(true);
  const [saving, setSaving] = useState(false);
  const [adviceLoadingId, setAdviceLoadingId] = useState<string | null>(null);
  const [adviceById, setAdviceById] = useState<Record<string, string>>({});

  const [message, setMessage] = useState("");
  const [aiPredictions, setAiPredictions] = useState<AiPrediction[]>([]);
  const [aiLoading, setAiLoading] = useState(false);
  const [aiMessage, setAiMessage] = useState("");
  const [selectedAi, setSelectedAi] = useState<AiPrediction | null>(null);
  const [registeredRaces, setRegisteredRaces] = useState<RegisteredRace[]>([]);
  const [racesLoading, setRacesLoading] = useState(false);
  const [racesError, setRacesError] = useState("");

  const [sport, setSport] = useState<Sport>("horse");
  const [raceDate, setRaceDate] = useState(
    new Date().toLocaleDateString("en-CA")
  );
  const [venue, setVenue] = useState("");
  const [raceNumber, setRaceNumber] = useState("1");
  const [betType, setBetType] = useState("単勝");
  const [selection, setSelection] = useState("");
  const [odds, setOdds] = useState("");
  const [stake, setStake] = useState("100");

useEffect(() => {
  const urlSport = searchParams.get("sport");
  const urlDate = searchParams.get("date");
  const urlVenue = searchParams.get("venue");
  const urlRace = searchParams.get("race");

  if (
    urlSport === "horse" &&
    urlDate &&
    urlVenue &&
    urlRace
  ) {
    setSport("horse");
    setRaceDate(urlDate);
    setVenue(urlVenue);
    setRaceNumber(urlRace);
    setBetType("単勝");
    setSelection("");
    setSelectedAi(null);
  }
}, [searchParams]);


  // 登録済みレースを一覧取得。読み取りのみで、予測生成や保存は行わない。
  useEffect(() => {
    let active = true;
    async function loadRegisteredRaces() {
      setRacesLoading(true);
      const { data, error } = await supabase
        .from("horse_races")
        .select("id,race_date,venue,race_number,race_name,is_test,data_source")
        .order("race_date", { ascending: false })
        .order("race_number", { ascending: true })
        .limit(200);
      if (!active) return;
      if (error) {
        setRacesError(`レース一覧を取得できません: ${error.message}`);
        setRegisteredRaces([]);
      } else {
        setRegisteredRaces((data ?? []) as RegisteredRace[]);
        setRacesError("");
      }
      setRacesLoading(false);
    }
    void loadRegisteredRaces();
    return () => { active = false; };
  }, [supabase]);

  function selectRegisteredRace(raceId: string) {
    const race = registeredRaces.find((item) => item.id === raceId);
    if (!race) return;
    setSport("horse");
    setRaceDate(race.race_date);
    setVenue(race.venue);
    setRaceNumber(String(race.race_number));
    setBetType("単勝");
    setSelection("");
    setOdds("");
    setSelectedAi(null);
    setMessage("");
  }

  useEffect(() => {
    let active = true;
    setAiPredictions([]);
    setAiMessage("");
    setSelectedAi(null);

    if (sport !== "horse" || !raceDate || !venue || !/^\d+$/.test(raceNumber) || Number(raceNumber) < 1 || Number(raceNumber) > 12) {
      setAiLoading(false);
      return () => { active = false; };
    }

    async function loadAi() {
      setAiLoading(true);
      const { data: races, error } = await supabase
        .from("horse_races")
        .select("id")
        .eq("race_date", raceDate)
        .eq("venue", venue.trim())
        .eq("race_number", Number(raceNumber))
        .eq("is_test", false)
        .limit(2);

      if (!active) return;
      if (error) {
        setAiMessage("レース照合に失敗しました: " + error.message);
        setAiLoading(false);
        return;
      }
      if (!races || races.length !== 1) {
        setAiMessage(races && races.length > 1 ? "同一条件のレースが複数あります。" : "対象レースのAI予測はまだありません。");
        setAiLoading(false);
        return;
      }

      try {
        const response = await fetch(`/api/ai-predictions?race_id=${encodeURIComponent(races[0].id)}`, { cache: "no-store" });
        const body: { predictions?: AiPrediction[]; error?: string } = await response.json();
        if (!active) return;
        if (!response.ok) {
          setAiMessage(body.error ?? "AI予測を取得できませんでした。");
        } else {
          const rows = (body.predictions ?? []).filter(row => row.model_version === FIXED_MODEL_VERSION);
          // 複数のモデル・予測時点がある場合、最新の1組だけを表示する。
          const latest = [...rows].sort((a, b) => b.created_at.localeCompare(a.created_at))[0];
          const group = latest ? rows.filter(x => x.model_version === latest.model_version && x.prediction_mode === latest.prediction_mode && x.created_at === latest.created_at) : [];
          setAiPredictions([...group].sort((a, b) => a.horse_number - b.horse_number));
          setAiMessage(group.length ? "" : "このレースのAI予測はまだ生成されていません。");
        }
      } catch {
        if (active) setAiMessage("AI予測APIとの通信に失敗しました。");
      } finally {
        if (active) setAiLoading(false);
      }
    }
    void loadAi();
    return () => { active = false; };
  }, [sport, raceDate, venue, raceNumber, supabase]);

  function applyAiSelection(row: AiPrediction) {
    setSelectedAi(row);
    setBetType("単勝");
    setSelection(String(row.horse_number));
    setOdds(row.odds_at_prediction == null ? "" : String(row.odds_at_prediction));
    setMessage(`AI予測の${row.horse_number}番を入力しました。保存前に内容を確認してください。`);
  }

  const loadPredictions = useCallback(async () => {
    const { data, error } = await supabase
      .from("predictions")
      .select("*")
      .order("created_at", { ascending: false });

    if (error) {
      setMessage("読み込みエラー: " + error.message);
    } else {
      setPredictions(data ?? []);
    }
  }, [supabase]);

  useEffect(() => {
    let active = true;

    async function initialize() {
      const { data, error } = await supabase.auth.getUser();

      if (!active) return;

      if (error || !data.user) {
        router.replace("/login");
        return;
      }

      setUserId(data.user.id);
      await loadPredictions();

      if (active) setLoading(false);
    }

    void initialize();

    return () => {
      active = false;
    };
  }, [router, supabase, loadPredictions]);

  
function handleSportChange(value: Sport) {
  setSport(value);
  setVenue("");
  setBetType("単勝");
  setSelection("");
  setSelectedAi(null);
  setMessage("");
}


  function handleBetTypeChange(value: string) {
    setSelectedAi(null);
    setBetType(value);
    setSelection("");
    setMessage("");
  }

  async function handleSave(
    event: React.FormEvent<HTMLFormElement>
  ) {
    event.preventDefault();
    if (!userId || saving) return;

    const number = Number(raceNumber);
    const amount = Number(stake);
    const parsedOdds =
      odds.trim() === "" ? null : Number(odds);

    if (
      !raceDate ||
      !venue.trim() ||
      !Number.isInteger(number) ||
      number < 1 ||
      number > 12 ||
      !Number.isInteger(amount) ||
      amount <= 0 ||
      amount % 100 !== 0 ||
      (parsedOdds !== null &&
        (!Number.isFinite(parsedOdds) || parsedOdds <= 0))
    ) {
      setMessage(
        "入力内容を確認してください。金額は100円単位です。"
      );
      return;
    }

    const result = normalizeSelection(
      selection,
      sport,
      betType
    );

    if (result.error || !result.value) {
      setMessage(result.error ?? "買い目が正しくありません。");
      return;
    }

    // AI選択後に買い目・オッズを手修正した場合は参照しない。
    const aiReference = sport === "horse" && betType === "単勝" && selectedAi &&
      result.value === String(selectedAi.horse_number) &&
      parsedOdds === selectedAi.odds_at_prediction ? selectedAi : null;

    setSaving(true);
    setMessage("");

    try {
      let linkedRaceId: string | null = null;

      if (sport === "horse") {
        // 最大2件を取得し、レースの重複を検知する。
        // 0件の場合も推測で別レースに紐づけない。
        const { data: races, error: raceError } = await supabase
          .from("horse_races")
          .select("id")
          .eq("race_date", raceDate)
          .eq("venue", venue.trim())
          .eq("race_number", number)
          .limit(2);

        if (raceError) {
          setMessage(`レース照合エラー: ${raceError.message}。保存は行っていません。`);
          return;
        }
        if (!races || races.length === 0) {
          setMessage("対応するレースがhorse_racesにありません。レースデータを登録してから予想を保存してください。");
          return;
        }
        if (races.length > 1) {
          setMessage("同じ日付・開催場・レース番号のデータが複数あります。誤った紐づけを防ぐため保存を中止しました。");
          return;
        }
        linkedRaceId = races[0].id;
        if (aiReference && aiReference.race_id !== linkedRaceId) {
          setMessage("選択したAI予測とレースが一致しません。保存を中止しました。");
          return;
        }
        if (aiReference && new Date(aiReference.created_at).getTime() > Date.now()) {
          setMessage("AI予測の生成日時が未来になっています。保存を中止しました。");
          return;
        }
      }

      const { error } = await supabase
        .from("predictions")
        .insert({
          user_id: userId,
          sport,
          race_date: raceDate,
          venue: venue.trim(),
          race_number: number,
          bet_type: betType,
          selection: result.value,
          odds: parsedOdds,
          stake: amount,
          ...(sport === "horse" ? { race_id: linkedRaceId } : {}),
          ...(aiReference ? {
            referenced_ai_prediction_id: aiReference.id,
            referenced_ai_model_version: aiReference.model_version,
            referenced_ai_win_probability: aiReference.win_probability,
            referenced_ai_expected_return: aiReference.expected_return,
            referenced_ai_created_at: aiReference.created_at,
          } : {}),
        });

      if (error) {
        setMessage("保存エラー: " + error.message);
      } else {
        setMessage("クラウドに保存しました！" + (sport === "horse" ? " レースIDも紐づけ済みです。" : ""));
        setSelection("");
        setOdds("");
        setSelectedAi(null);
        await loadPredictions();
      }
    } catch (error) {
      setMessage(`通信エラー: ${error instanceof Error ? error.message : "不明なエラー"}`);
    } finally {
      setSaving(false);
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
      setAdviceById((previous) => ({
        ...previous,
        [predictionId]: response.ok ? result.advice : `分析できません: ${result.error ?? "不明なエラー"}`,
      }));
    } catch {
      setAdviceById((previous) => ({ ...previous, [predictionId]: "通信エラーが発生しました" }));
    } finally {
      setAdviceLoadingId(null);
    }
  }

  const inputStyle: React.CSSProperties = {
    width: "100%",
    padding: 12,
    borderRadius: 8,
    border: "1px solid var(--rl-faint)",
    background: "var(--rl-bg)",
    color: "var(--rl-text)",
    marginTop: 6,
  };

  const fieldStyle: React.CSSProperties = {
    display: "block",
    marginBottom: 16,
  };

  const selectedRace = registeredRaces.find(
    (race) => race.race_date === raceDate && race.venue === venue && race.race_number === Number(raceNumber)
  );
  const venueOptions = sport === "horse"
    ? Array.from(new Set([...VENUES.horse, ...registeredRaces.map((race) => race.venue)]))
    : VENUES.boat;

  const selectedCount = BET_COUNTS[betType] ?? 1;

  const example =
    selectedCount === 1
      ? "例：1"
      : selectedCount === 2
        ? "例：1-3"
        : "例：1-3-5";

  if (loading) {
    return (
      <main style={{ padding: 32 }}>
        ログイン状態を確認中...
      </main>
    );
  }

  return (
    <main
      style={{
        minHeight: "100vh",
        background: "var(--rl-bg)",
        color: "var(--rl-text)",
        padding: 24,
      }}
    >
      <div style={{ maxWidth: 800, margin: "auto" }}>
        <a href="/" style={{ color: "#93c5fd" }}>
          ← ホームに戻る
        </a>

        <h1 style={{ margin: "24px 0" }}>
          🐎 RACE LAB 予想登録
        </h1>

        <section
          style={{
            background: "var(--rl-hover)",
            borderRadius: 16,
            padding: 24,
            marginBottom: 24,
          }}
        >
          <h2 style={{ marginBottom: 20 }}>
            新しい予想
          </h2>

          <form onSubmit={handleSave}>
            <label style={fieldStyle}>
              競技
              <select
                value={sport}
                onChange={(e) =>
                  handleSportChange(
                    e.target.value as Sport
                  )
                }
                style={inputStyle}
              >
                <option value="horse">競馬</option>
                <option value="boat">競艇</option>
              </select>
            </label>

            {sport === "horse" && (
              <section style={{ background: "var(--rl-bg)", border: "1px solid var(--rl-border)", borderRadius: 12, padding: 16, marginBottom: 20 }}>
                <h3 style={{ margin: "0 0 8px" }}>📅 登録済みレースから選択</h3>
                <p style={{ color: "var(--rl-muted)", fontSize: 12 }}>選択すると開催日・開催場・レース番号が自動入力されます。手動入力も引き続き使えます。</p>
                <select aria-label="登録済みレース" value={selectedRace?.id ?? ""}
                  onChange={(event) => selectRegisteredRace(event.target.value)} style={inputStyle}>
                  <option value="">レースを選択してください</option>
                  {registeredRaces.map((race) => (
                    <option key={race.id} value={race.id}>
                      {race.race_date} {race.venue} {race.race_number}R {race.race_name ?? ""} {race.is_test ? "【テスト】" : "【登録データ】"}
                    </option>
                  ))}
                </select>
                {racesLoading && <p style={{ color: "var(--rl-muted)" }}>レース一覧を取得中...</p>}
                {racesError && <p role="alert" style={{ color: "#fbbf24" }}>{racesError}</p>}
                {!racesLoading && !racesError && registeredRaces.length === 0 && (
                  <p style={{ color: "var(--rl-muted)" }}>閲覧できる登録済みレースがありません。</p>
                )}
                {selectedRace?.is_test && <p style={{ color: "#fbbf24", fontSize: 12 }}>架空のテストデータです。実戦の成績には含めません。</p>}
              </section>
            )}

            <label style={fieldStyle}>
              開催日
              <input
                type="date"
                required
                value={raceDate}
                onChange={(e) =>
                  (setRaceDate(e.target.value), setSelectedAi(null))
                }
                style={inputStyle}
              />
            </label>

            
<label style={fieldStyle}>
  開催場
  <select
    required
    value={venue}
    onChange={(e) => { setVenue(e.target.value); setSelectedAi(null); }}
    style={inputStyle}
  >
    <option value="">開催場を選択してください</option>
    {venueOptions.map((name) => (
      <option key={name} value={name}>
        {name}
      </option>
    ))}
  </select>
</label>


            <label style={fieldStyle}>
              レース番号
              <input
                type="number"
                min="1"
                max="12"
                required
                value={raceNumber}
                onChange={(e) =>
                  (setRaceNumber(e.target.value), setSelectedAi(null))
                }
                style={inputStyle}
              />
            </label>

            {sport === "horse" && venue && (
              <section style={{ background: "var(--rl-bg)", border: "1px solid var(--rl-border)", borderRadius: 12, padding: 16, marginBottom: 20 }}>
                <h3 style={{ margin: "0 0 8px" }}>🔬 AI予測（固定モデル）</h3>
                {aiLoading ? <p>AI予測を取得中...</p> : null}
                {!aiLoading && aiMessage ? <p style={{ color: "var(--rl-sub)" }}>{aiMessage}</p> : null}
                {!aiLoading && aiPredictions.length > 0 && (
                  <>
                    <p style={{ fontSize: 12, color: "var(--rl-muted)" }}>
                      {aiPredictions.length}頭 / モデル: {aiPredictions[0].model_version}
                    </p>
                    <div style={{ overflowX: "auto" }}>
                      <table style={{ width: "100%", borderCollapse: "collapse", fontSize: 13 }}>
                        <thead><tr style={{ borderBottom: "1px solid var(--rl-faint)", textAlign: "right" }}>
                          <th style={{ padding: 8, textAlign: "left" }}>馬番</th><th>勝率</th><th>単勝</th><th>期待回収率</th><th>評価</th><th>選択</th>
                        </tr></thead>
                        <tbody>
                          {aiPredictions.map(row => (
                            <tr key={row.id} style={{ borderBottom: "1px solid var(--rl-border)", textAlign: "right" }}>
                              <td style={{ padding: 8, textAlign: "left" }}>{row.horse_number}</td>
                              <td>{(row.win_probability * 100).toFixed(1)}%</td>
                              <td>{row.odds_at_prediction == null ? "－" : row.odds_at_prediction.toFixed(1)}</td>
                              <td>{row.expected_return == null ? "－" : `${(row.expected_return * 100).toFixed(1)}%`}</td>
                              <td style={{ color: row.recommendation === "BUY" ? "var(--rl-accent-bright)" : "var(--rl-sub)" }}>{row.recommendation}</td>
                              <td><button type="button" onClick={() => applyAiSelection(row)} style={{ background: "#93c5fd", color: "var(--rl-bg)", border: 0, borderRadius: 6, padding: "6px 8px", cursor: "pointer" }}>選択</button></td>
                            </tr>
                          ))}
                        </tbody>
                      </table>
                    </div>
                    <details style={{ marginTop: 12 }}>
                      <summary style={{ cursor: "pointer" }}>馬ごとのAI評価理由を見る</summary>
                      {aiPredictions.map(row => (
                        <details key={row.id} style={{ marginTop: 10, padding: 8, borderBottom: "1px solid var(--rl-border)" }}>
                          <summary style={{ cursor: "pointer" }}>{row.horse_number}番（{row.recommendation}）</summary>
                          <p style={{ whiteSpace: "pre-wrap", lineHeight: 1.7, fontSize: 13 }}>{row.reason ?? "理由なし"}</p>
                        </details>
                      ))}
                    </details>
                    <p style={{ fontSize: 12, color: "#fbbf24", marginTop: 12 }}>
                      予測勝率と期待回収率は推定値です。予測の生成時刻と買い目登録時刻は別に記録されます。
                    </p>
                  </>
                )}
              </section>
            )}

            <label style={fieldStyle}>
              券種
              <select
                value={betType}
                onChange={(e) =>
                  handleBetTypeChange(e.target.value)
                }
                style={inputStyle}
              >
                {BET_TYPES[sport].map((type) => (
                  <option key={type} value={type}>
                    {type}
                  </option>
                ))}
              </select>
            </label>

            <label style={fieldStyle}>
              買い目
              <input
                required
                value={selection}
                onChange={(e) =>
                  (setSelection(e.target.value), setSelectedAi(null))
                }
                placeholder={example}
                style={inputStyle}
              />
              <small style={{ color: "var(--rl-muted)" }}>
                {betType}：{selectedCount}つの番号を入力
              </small>
            </label>

            <label style={fieldStyle}>
              オッズ（任意）
              <input
                type="number"
                min="0.01"
                step="any"
                value={odds}
                onChange={(e) =>
                  (setOdds(e.target.value), setSelectedAi(null))
                }
                style={inputStyle}
              />
            </label>

            {selectedAi && (
              <p style={{ color: "var(--rl-accent-bright)", fontSize: 13, marginBottom: 12 }}>
                AI参照中：{selectedAi.horse_number}番 / {selectedAi.model_version}
                （買い目やオッズを変更すると参照を解除します）
              </p>
            )}

            <label style={fieldStyle}>
              仮想購入金額（円）
              <input
                type="number"
                min="100"
                step="100"
                required
                value={stake}
                onChange={(e) =>
                  setStake(e.target.value)
                }
                style={inputStyle}
              />
            </label>

            <button
              type="submit"
              disabled={saving}
              style={{
                width: "100%",
                padding: 14,
                background: "var(--rl-accent-bright)",
                color: "var(--rl-accent-bg)",
                border: 0,
                borderRadius: 8,
                fontWeight: "bold",
                cursor: "pointer",
              }}
            >
              {saving
                ? "保存中..."
                : "予想をクラウドに保存"}
            </button>
          </form>

          {message && (
            <p role="status" style={{ marginTop: 16 }}>
              {message}
            </p>
          )}
        </section>

        <h2 style={{ marginBottom: 16 }}>
          自分の予想一覧（{predictions.length}件）
        </h2>

        {predictions.map((p) => (
          <section
            key={p.id}
            style={{
              background: "var(--rl-hover)",
              padding: 20,
              borderRadius: 12,
              marginBottom: 12,
            }}
          >
            <strong>
              {p.sport === "horse" ? "🐎" : "🚤"}{" "}
              {p.venue} {p.race_number}R
            </strong>

            <p
              style={{
                color: "var(--rl-muted)",
                marginTop: 8,
              }}
            >
              {p.race_date} / {p.bet_type}
            </p>

            <p style={{ marginTop: 8 }}>
              買い目：{p.selection}
            </p>

            {p.referenced_ai_prediction_id && p.referenced_ai_model_version === FIXED_MODEL_VERSION && (
              <p style={{ color: "var(--rl-accent-bright)", fontSize: 12, marginTop: 8 }}>
                AI参照保存済：{p.referenced_ai_model_version} / 勝率 {p.referenced_ai_win_probability == null ? "－" : (p.referenced_ai_win_probability * 100).toFixed(1) + "%"} / 期待回収率 {p.referenced_ai_expected_return == null ? "－" : (p.referenced_ai_expected_return * 100).toFixed(1) + "%"}
              </p>
            )}
            <p>
              {p.stake.toLocaleString()}円
              {p.odds !== null
                ? ` / オッズ ${p.odds}`
                : ""}
            </p>
            {p.sport === "horse" && (
              <div style={{ marginTop: 12 }}>
                <button
                  type="button"
                  disabled={adviceLoadingId !== null}
                  onClick={() => void handleAdvice(p.id)}
                  style={{ padding: "10px 16px", borderRadius: 8, border: 0, background: "#93c5fd", color: "var(--rl-bg)", fontWeight: "bold", cursor: "pointer" }}
                >
                  {adviceLoadingId === p.id ? "AI評価中..." : "AIにこの買い目を評価させる"}
                </button>
                {adviceById[p.id] && (
                  <p role="status" style={{ whiteSpace: "pre-wrap", marginTop: 12, lineHeight: 1.7, color: "var(--rl-text)" }}>
                    {adviceById[p.id]}
                  </p>
                )}
              </div>
            )}
          </section>
        ))}

        {predictions.length === 0 && (
          <p style={{ color: "var(--rl-muted)" }}>
            まだ予想がありません。
          </p>
        )}
      </div>
    </main>
  );
}

export default function PredictionsPage() {
  return (
    <Suspense
      fallback={
        <main style={{ padding: 32 }}>
          予想画面を読み込み中...
        </main>
      }
    >
      <PredictionsContent />
    </Suspense>
  );
}

