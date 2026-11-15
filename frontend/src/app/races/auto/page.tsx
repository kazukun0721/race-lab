
"use client";

import { useCallback, useEffect, useState } from "react";

type Horse = {
  number: number;
  name: string;
};

type Race = {
  race_id: string;
  sport: string;
  date: string;
  venue: string;
  race_number: number;
  horses: Horse[];
};

export default function AutoRacesPage() {
  const [races, setRaces] = useState<Race[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState("");

  const loadRaces = useCallback(async () => {
    setLoading(true);
    setError("");

    try {
      const response = await fetch("/api/races", {
        cache: "no-store",
      });

      if (!response.ok) {
        throw new Error("API error");
      }

      const data = await response.json();

      if (!data.success || !Array.isArray(data.races)) {
        throw new Error("Invalid data");
      }

      setRaces(data.races);
    } catch {
      setError("レースデータを取得できませんでした。");
    } finally {
      setLoading(false);
    }
  }, []);

  useEffect(() => {
    void loadRaces();
  }, [loadRaces]);

  return (
    <main
      style={{
        minHeight: "100vh",
        background: "#0b1220",
        color: "#f8fafc",
        padding: 24,
      }}
    >
      <div style={{ maxWidth: 900, margin: "auto" }}>
        <a
          href="/"
          style={{
            color: "#93c5fd",
            textDecoration: "none",
          }}
        >
          ← ホームに戻る
        </a>

        <h1 style={{ margin: "24px 0" }}>
          🐎 自動取得レース一覧
        </h1>

        <button
          onClick={loadRaces}
          disabled={loading}
          style={{
            padding: "12px 20px",
            background: "#34d399",
            color: "#052e24",
            border: 0,
            borderRadius: 10,
            cursor: loading ? "wait" : "pointer",
            marginBottom: 24,
            fontWeight: "bold",
          }}
        >
          {loading ? "読み込み中..." : "データを再読み込み"}
        </button>

        {error && (
          <p role="alert" style={{ color: "#f87171" }}>
            {error}
          </p>
        )}

        {!loading && !error && races.length === 0 && (
          <p>登録されたレースはありません。</p>
        )}

        {!error &&
          races.map((race) => (
            <section
              key={race.race_id}
              style={{
                background: "#172338",
                borderRadius: 16,
                padding: 24,
                marginBottom: 18,
              }}
            >
              <h2 style={{ marginBottom: 8 }}>
                {race.venue} {race.race_number}R
              </h2>

              <p style={{ color: "#94a3b8" }}>
                {race.date}
              </p>

              <div style={{ marginTop: 18 }}>
                {race.horses.map((horse) => (
                  <div
                    key={horse.number}
                    style={{
                      display: "flex",
                      gap: 20,
                      padding: 12,
                      borderBottom: "1px solid #334155",
                    }}
                  >
                    <strong>{horse.number}番</strong>
                    <span>{horse.name}</span>
                  </div>
                ))}
              </div>
            </section>
          ))}
      </div>
    </main>
  );
}
