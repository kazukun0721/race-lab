
"use client";

import { useEffect, useState } from "react";
import { useRouter } from "next/navigation";
import { createClient } from "@/lib/supabase/client";

type HorseOdds = {
  id: string;
  bet_type: string;
  selection: string;
  odds: number;
  odds_max: number | null;
  fetched_at: string;
  odds_status: string;
};

type HorseEntry = {
  id: string;
  horse_number: number;
  bracket_number: number | null;
  horse_name: string;
  jockey_name: string | null;
  horse_age: number | null;
  horse_sex: string | null;
  carried_weight: number | null;
  odds: number | null;
  popularity: number | null;
  entry_status: string;
previous_jockey_name: string | null;
updated_at: string;
};

type HorseRace = {
  id: string;
  race_date: string;
  venue: string;
  race_number: number;
  race_name: string | null;
  distance: number | null;
  surface: string | null;
  track_condition: string | null;
  weather: string | null;
  starts_at: string | null;
  horse_entries: HorseEntry[];
  horse_odds: HorseOdds[];
};

export default function HorseRacesPage() {
  const router = useRouter();
  const [races, setRaces] = useState<HorseRace[]>([]);
  const [oddsType, setOddsType] = useState<"単勝" | "複勝">("単勝");
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState("");

  useEffect(() => {
    const supabase = createClient();

    async function loadRaces() {
      const {
        data: { user },
      } = await supabase.auth.getUser();

      if (!user) {
        router.replace("/login");
        return;
      }

      const { data, error } = await supabase
        .from("horse_races")
        .select(`
          id,
          race_date,
          venue,
          race_number,
          race_name,
          distance,
          surface,
          track_condition,
          weather,
          starts_at,
          horse_entries (
 id,
  horse_number,
  bracket_number,
  horse_name,
  jockey_name,
  horse_age,
  horse_sex,
  carried_weight,
  odds,
  popularity,
  entry_status,
  previous_jockey_name,
  updated_at
),
horse_odds (
  id,
  bet_type,
  selection,
  odds,
  odds_max,
  fetched_at,
  odds_status
)
        `)
        .order("race_date", { ascending: false })
        .order("race_number", { ascending: true })
        .limit(30);

      if (error) {
        setError(error.message);
      } else {
        setRaces((data ?? []) as HorseRace[]);
      }

      setLoading(false);
    }

    
    void loadRaces();

    // 60秒ごとに最新データを取得
    const intervalId = window.setInterval(() => {
      void loadRaces();
    }, 60000);

    // ページを離れたら更新を停止
    return () => {
      window.clearInterval(intervalId);
    };
  }, [router]);


  return (
    <main
      style={{
        minHeight: "100vh",
        background: "#0b1220",
        color: "#f8fafc",
        padding: 24,
      }}
    >
      <div style={{ maxWidth: 1000, margin: "auto" }}>
        <a href="/" style={{ color: "#93c5fd" }}>
          ← ホームに戻る
        </a>

        <h1 style={{ margin: "24px 0" }}>
          🐎 RACE LAB 出馬表
        </h1>

        {loading && <p>読み込み中...</p>}

        {error && (
          <p style={{ color: "#fca5a5" }}>
            エラー：{error}
          </p>
        )}

        {!loading && !error && races.length === 0 && (
          <p>登録されたレースはありません。</p>
        )}

        {races.map((race) => (
          <section
            key={race.id}
            style={{
              background: "#172338",
              padding: 24,
              borderRadius: 16,
              marginBottom: 24,
            }}
          >
            <h2>
              {race.venue} {race.race_number}R
              {race.race_name
                ? ` / ${race.race_name}`
                : ""}
            </h2>

            <p style={{ color: "#94a3b8", marginTop: 8 }}>
              {race.race_date} / {race.surface}
              {race.distance
                ? ` ${race.distance}m`
                : ""}
              {race.track_condition
                ? ` / 馬場：${race.track_condition}`
                : ""}
              {race.weather
                ? ` / 天候：${race.weather}`
                : ""}
            </p>

            <p style={{ marginTop: 8 }}>
              発走予定：
              {race.starts_at
                ? new Date(
                    race.starts_at
                  ).toLocaleTimeString("ja-JP", {
                    timeZone: "Asia/Tokyo",
                    hour: "2-digit",
                    minute: "2-digit",
                  })
                : "未登録"}
            </p>

<a
  href={`/predictions?sport=horse&date=${race.race_date}&venue=${encodeURIComponent(race.venue)}&race=${race.race_number}`}
  style={{
    display: "inline-block",
    marginTop: 16,
    padding: "10px 18px",
    background: "#34d399",
    color: "#052e24",
    borderRadius: 8,
    fontWeight: "bold",
    textDecoration: "none",
  }}
>
  このレースを予想する →
</a>


            
<div style={{ display: "flex", gap: 8, marginTop: 20 }}>
  {(["単勝", "複勝"] as const).map((type) => (
    <button
      key={type}
      type="button"
      onClick={() => setOddsType(type)}
      style={{
        padding: "8px 18px",
        borderRadius: 8,
        border: "none",
        cursor: "pointer",
        background:
          oddsType === type ? "#34d399" : "#334155",
        color: oddsType === type ? "#052e24" : "#f8fafc",
        fontWeight: "bold",
      }}
    >
      {type}
    </button>
  ))}
</div>


<p
  style={{
    marginTop: 10,
    fontSize: 12,
    color: "#94a3b8",
  }}
>
  オッズ取得日時：
  {(() => {
    const odds = race.horse_odds
      .filter((item) => item.bet_type === oddsType)
      .map((item) => new Date(item.fetched_at).getTime())
      .filter((time) => Number.isFinite(time));

    if (odds.length === 0) {
      return "未取得";
    }

    return new Date(Math.max(...odds)).toLocaleString("ja-JP", {
      timeZone: "Asia/Tokyo",
    });
  })()}
</p>


<div
  style={{
    overflowX: "auto",
    marginTop: 20,
  }}
>


              <table
                style={{
                  width: "100%",
                  borderCollapse: "collapse",
                  minWidth: 650,
                }}
              >
                <thead>
                  <tr>
                    {[
                      "枠",
                      "馬番",
                      "馬名",
                      "性齢",
                      "騎手",
                      "斤量",
                      `${oddsType}オッズ`,
                      "人気",
                    ].map((heading) => (
                      <th
                        key={heading}
                        style={{
                          padding: 12,
                          textAlign: "left",
                          borderBottom:
                            "1px solid #475569",
                        }}
                      >
                        {heading}
                      </th>
                    ))}
                  </tr>
                </thead>

                <tbody>
                  {[...race.horse_entries]
                    .sort(
                      (a, b) =>
                        a.horse_number -
                        b.horse_number
                    )
                    .map((horse) => (
                      <tr key={horse.id}>
                        <td style={{ padding: 12 }}>
                          {horse.bracket_number ?? "-"}
                        </td>
                        <td style={{ padding: 12 }}>
                          {horse.horse_number}
                        </td>
                        
<td
  style={{
    padding: 12,
    fontWeight: "bold",
  }}
>
  <div>{horse.horse_name}</div>

  {horse.entry_status === "scratched" && (
    <span style={{ color: "#f87171", fontSize: 12 }}>
      出走取消
    </span>
  )}

  {horse.entry_status === "excluded" && (
    <span style={{ color: "#fbbf24", fontSize: 12 }}>
      競走除外
    </span>
  )}
</td>

                        <td style={{ padding: 12 }}>
                          {horse.horse_sex ?? ""}
                          {horse.horse_age ?? ""}
                        </td>
                        
<td style={{ padding: 12 }}>
  <div>{horse.jockey_name ?? "-"}</div>

  {horse.previous_jockey_name &&
    horse.previous_jockey_name !== horse.jockey_name && (
      <div
        style={{
          color: "#fbbf24",
          fontSize: 12,
          marginTop: 4,
        }}
      >
        変更前：{horse.previous_jockey_name}
      </div>
    )}
</td>

                        <td style={{ padding: 12 }}>
                          {horse.carried_weight ?? "-"}
                        </td>
                        <td style={{ padding: 12 }}>
  {(() => {
    // 出走取消・競走除外の馬はオッズを表示しない
    if (horse.entry_status !== "entered") {
      return (
        <span style={{ color: "#f87171" }}>
          発売対象外
        </span>
      );
    }

    
    const selectedOdds = race.horse_odds.find(
      (item) =>
        item.bet_type === oddsType &&
        item.selection === String(horse.horse_number)
    );

    if (
      !selectedOdds ||
      selectedOdds.odds_status !== "available"
    ) {
      return "-";
    }

    const min = selectedOdds.odds.toFixed(1);

    if (
      oddsType === "複勝" &&
      selectedOdds.odds_max !== null
    ) {
      return `${min}〜${selectedOdds.odds_max.toFixed(1)}`;
    }

    return min;

  })()}
</td>

                        <td style={{ padding: 12 }}>
                          {horse.popularity ?? "-"}
                        </td>
                      </tr>
                    ))}
                </tbody>
              </table>
            </div>
          </section>
        ))}
      </div>
    </main>
  );
}
