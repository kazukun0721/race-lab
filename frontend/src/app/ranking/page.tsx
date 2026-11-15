
"use client";

import { useEffect, useState } from "react";
import { useRouter } from "next/navigation";
import { createClient } from "@/lib/supabase/client";

type Ranking = {
  user_id: string;
  total_predictions: number;
  total_stake: number;
  total_payout: number;
  hits: number;
  hit_rate: number | null;
  return_rate: number | null;
  profit: number;
};

export default function RankingPage() {
  const router = useRouter();
  const [rankings, setRankings] = useState<Ranking[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState("");

  useEffect(() => {
    const supabase = createClient();

    async function loadRanking() {
      const {
        data: { user },
        error: authError,
      } = await supabase.auth.getUser();

      if (authError || !user) {
        router.replace("/login");
        return;
      }

      const { data, error } = await supabase.rpc("get_ranking");

      if (error) {
        setError(error.message);
      } else {
        setRankings((data ?? []) as Ranking[]);
      }

      setLoading(false);
    }

    void loadRanking();
  }, [router]);

  const formatMoney = (value: number) =>
    Number(value).toLocaleString("ja-JP") + "円";

  return (
    <main
      style={{
        minHeight: "100vh",
        background: "#0b1220",
        color: "#f8fafc",
        padding: "32px 20px",
      }}
    >
      <div style={{ maxWidth: 1000, margin: "0 auto" }}>
        <a href="/" style={{ color: "#93c5fd" }}>
          ← ホームへ
        </a>

        <h1 style={{ fontSize: 30, marginTop: 24 }}>
          🏆 RACE LAB ランキング
        </h1>

        <p style={{ color: "#94a3b8", marginBottom: 28 }}>
          確定した予想の成績を比較
        </p>

        {loading ? (
          <p>ランキングを読み込み中...</p>
        ) : error ? (
          <p style={{ color: "#fca5a5" }}>
            エラー：{error}
          </p>
        ) : rankings.length === 0 ? (
          <div
            style={{
              background: "#172235",
              padding: 28,
              borderRadius: 12,
              textAlign: "center",
            }}
          >
            <h2>まだ集計済みデータがありません</h2>
            <p style={{ color: "#94a3b8" }}>
              レース結果が確定するとランキングに反映されます。
            </p>
          </div>
        ) : (
          <div style={{ overflowX: "auto" }}>
            <table
              style={{
                width: "100%",
                borderCollapse: "collapse",
                minWidth: 750,
              }}
            >
              <thead>
                <tr>
                  {[
                    "順位",
                    "ユーザー",
                    "予想数",
                    "的中率",
                    "回収率",
                    "収支",
                  ].map((item) => (
                    <th
                      key={item}
                      style={{
                        padding: 14,
                        textAlign: "left",
                        borderBottom: "1px solid #334155",
                      }}
                    >
                      {item}
                    </th>
                  ))}
                </tr>
              </thead>

              <tbody>
                {rankings.map((item, index) => (
                  <tr key={item.user_id}>
                    <td style={{ padding: 14 }}>
                      {index + 1}位
                    </td>
                    <td style={{ padding: 14 }}>
                      {item.user_id.slice(0, 8)}
                    </td>
                    <td style={{ padding: 14 }}>
                      {item.total_predictions}
                    </td>
                    <td style={{ padding: 14 }}>
                      {item.hit_rate ?? 0}%
                    </td>
                    <td style={{ padding: 14 }}>
                      {item.return_rate ?? 0}%
                    </td>
                    <td
                      style={{
                        padding: 14,
                        color:
                          item.profit >= 0
                            ? "#4ade80"
                            : "#f87171",
                      }}
                    >
                      {formatMoney(item.profit)}
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        )}
      </div>
    </main>
  );
}
