
"use client";

import { useState } from "react";

type Sport = "horse" | "boat";

export default function Home() {
  const [sport, setSport] = useState<Sport>("horse");

  const isHorse = sport === "horse";
  const accent = isHorse ? "#34d399" : "#60a5fa";

  const card: React.CSSProperties = {
    background: "#172338",
    border: "1px solid #29374d",
    borderRadius: 16,
    padding: 22,
  };

  return (
    <main style={{
      minHeight: "100vh",
      background: "#0b1220",
      color: "#f1f5f9",
      fontFamily: "Arial, sans-serif",
      padding: "32px 18px",
    }}>
      <div style={{ maxWidth: 1100, margin: "auto" }}>
        <header style={{ marginBottom: 32 }}>
          <div style={{
            color: accent,
            fontSize: 13,
            letterSpacing: 3,
            fontWeight: "bold",
          }}>
            AI PREDICTION PLATFORM
          </div>
          <h1 style={{ fontSize: 30, margin: "12px 0" }}>
            RACE LAB
          </h1>
          <p style={{ color: "#94a3b8" }}>
            データで予測し、結果から学習する。
          </p>
        </header>

        <div style={{
          display: "flex",
          gap: 12,
          marginBottom: 28,
        }}>
          {([
            ["horse", "🐎 競馬"],
            ["boat", "🚤 競艇"],
          ] as const).map(([id, label]) => (
            <button
              key={id}
              onClick={() => setSport(id)}
              style={{
                flex: 1,
                padding: 18,
                background: sport === id ? accent : "#172338",
                color: sport === id ? "#0b1220" : "#cbd5e1",
                border: "1px solid #334155",
                borderRadius: 12,
                fontSize: 17,
                fontWeight: "bold",
                cursor: "pointer",
              }}
            >
              {label}
            </button>
          ))}
        </div>

        <h2 style={{ fontSize: 21, marginBottom: 18 }}>
          {isHorse ? "中央競馬" : "ボートレース"} ダッシュボード
        </h2>

        <section style={{
          display: "grid",
          gridTemplateColumns: "repeat(auto-fit, minmax(150px, 1fr))",
          gap: 14,
          marginBottom: 28,
        }}>
          {[
            ["的中率", "未集計", "%"],
            ["回収率", "未集計", "%"],
            ["累計収支", "未集計", "円"],
            ["予想レース数", "0", "R"],
          ].map(([label, value, unit]) => (
            <div key={label} style={card}>
              <div style={{ color: "#94a3b8", fontSize: 13 }}>
                {label}
              </div>
              <div style={{
                fontSize: 25,
                fontWeight: "bold",
                marginTop: 16,
              }}>
                {value}
                {value !== "未集計" && (
                  <span style={{ fontSize: 14, marginLeft: 5 }}>
                    {unit}
                  </span>
                )}
              </div>
            </div>
          ))}
        </section>

        <section style={card}>
          <h2 style={{ fontSize: 20, marginBottom: 12 }}>
            {isHorse ? "🐎" : "🚤"} レース予想
          </h2>
          <p style={{
            color: "#94a3b8",
            lineHeight: 1.8,
          }}>
            レースデータはまだ登録されていません。
            今後、出走情報・AI予測・期待値を表示します。
          </p>
          <div style={{
            marginTop: 22,
            padding: 18,
            borderRadius: 12,
            background: "#0b1220",
            border: "1px dashed #334155",
            textAlign: "center",
            color: "#94a3b8",
          }}>
            予想エンジン準備中
          </div>
        </section>

        <footer style={{
          marginTop: 32,
          color: "#64748b",
          textAlign: "center",
          fontSize: 12,
        }}>
          RACE LAB | Private AI Prediction System
        </footer>
      </div>
    </main>
  );
}
