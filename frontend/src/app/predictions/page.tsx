
"use client";

import { useCallback, useEffect, useState } from "react";
import { useRouter, useSearchParams } from "next/navigation";
import { createClient } from "@/lib/supabase/client";
import { Suspense } from "react";
type Sport = "horse" | "boat";

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
};


const VENUES: Record<Sport, string[]> = {
  horse: [
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
  const [message, setMessage] = useState("");

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
  }
}, [searchParams]);


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
  setMessage("");
}


  function handleBetTypeChange(value: string) {
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

    setSaving(true);
    setMessage("");

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
      });

    if (error) {
      setMessage("保存エラー: " + error.message);
    } else {
      setMessage("クラウドに保存しました！");
      setSelection("");
      setOdds("");
      await loadPredictions();
    }

    setSaving(false);
  }

  const inputStyle: React.CSSProperties = {
    width: "100%",
    padding: 12,
    borderRadius: 8,
    border: "1px solid #475569",
    background: "#0b1220",
    color: "#f8fafc",
    marginTop: 6,
  };

  const fieldStyle: React.CSSProperties = {
    display: "block",
    marginBottom: 16,
  };

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
        background: "#0b1220",
        color: "#f8fafc",
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
            background: "#172338",
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

            <label style={fieldStyle}>
              開催日
              <input
                type="date"
                required
                value={raceDate}
                onChange={(e) =>
                  setRaceDate(e.target.value)
                }
                style={inputStyle}
              />
            </label>

            
<label style={fieldStyle}>
  開催場
  <select
    required
    value={venue}
    onChange={(e) => setVenue(e.target.value)}
    style={inputStyle}
  >
    <option value="">開催場を選択してください</option>
    {VENUES[sport].map((name) => (
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
                  setRaceNumber(e.target.value)
                }
                style={inputStyle}
              />
            </label>

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
                  setSelection(e.target.value)
                }
                placeholder={example}
                style={inputStyle}
              />
              <small style={{ color: "#94a3b8" }}>
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
                  setOdds(e.target.value)
                }
                style={inputStyle}
              />
            </label>

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
                background: "#34d399",
                color: "#052e24",
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
              background: "#172338",
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
                color: "#94a3b8",
                marginTop: 8,
              }}
            >
              {p.race_date} / {p.bet_type}
            </p>

            <p style={{ marginTop: 8 }}>
              買い目：{p.selection}
            </p>

            <p>
              {p.stake.toLocaleString()}円
              {p.odds !== null
                ? ` / オッズ ${p.odds}`
                : ""}
            </p>
          </section>
        ))}

        {predictions.length === 0 && (
          <p style={{ color: "#94a3b8" }}>
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
