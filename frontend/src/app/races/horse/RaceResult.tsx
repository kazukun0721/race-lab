"use client";

import { Component, useEffect, useState } from "react";
import type { ReactNode } from "react";

type FinishRow = {
  rank: number | null;
  number: number;
  name: string;
  jockey?: string | null;
  popularity?: number | null;
  win_odds?: number | null;
  time?: string | null;
  margin?: string;
  last_3f?: string | null;
  status?: string | null;
};

type PayoutRow = { bet_type: string; combo: string; payout: number };

type RaceResultData = {
  race_id: string;
  generated_at?: string;
  provisional?: boolean;
  finish: FinishRow[];
  payouts?: PayoutRow[];
};

type BetReview = {
  win?: string;
  place?: string;
  umaren?: string;
  wide?: string;
  sanrenpuku?: string;
};

type RaceReviewData = {
  race_id: string;
  generated_at?: string;
  result_summary?: string;
  hit_note?: string;
  comment?: string;
  bet_review?: BetReview;
};

type Payload = { result: RaceResultData | null; review: RaceReviewData | null };

function isNum(v: unknown): v is number {
  return typeof v === "number" && Number.isFinite(v);
}

function isStrOrNull(v: unknown): v is string | null | undefined {
  return v === undefined || v === null || typeof v === "string";
}

function isFinishRow(v: unknown): v is FinishRow {
  if (!v || typeof v !== "object") return false;
  const r = v as Record<string, unknown>;
  return (
    (r.rank === null || isNum(r.rank)) &&
    isNum(r.number) &&
    typeof r.name === "string" &&
    isStrOrNull(r.jockey) &&
    (r.popularity === undefined || r.popularity === null || isNum(r.popularity)) &&
    (r.win_odds === undefined || r.win_odds === null || isNum(r.win_odds)) &&
    isStrOrNull(r.time) &&
    (r.margin === undefined || typeof r.margin === "string") &&
    isStrOrNull(r.last_3f) &&
    isStrOrNull(r.status)
  );
}

function isResult(v: unknown): v is RaceResultData {
  if (!v || typeof v !== "object" || Array.isArray(v)) return false;
  const d = v as Record<string, unknown>;
  if (!Array.isArray(d.finish) || !d.finish.every(isFinishRow)) return false;
  if (d.payouts !== undefined) {
    if (!Array.isArray(d.payouts)) return false;
    for (const p of d.payouts) {
      if (!p || typeof p !== "object") return false;
      const pr = p as Record<string, unknown>;
      if (typeof pr.bet_type !== "string" || typeof pr.combo !== "string" || !isNum(pr.payout))
        return false;
    }
  }
  return true;
}

function isReview(v: unknown): v is RaceReviewData {
  if (!v || typeof v !== "object" || Array.isArray(v)) return false;
  const d = v as Record<string, unknown>;
  if (!isStrOrNull(d.result_summary)) return false;
  if (d.hit_note !== undefined && typeof d.hit_note !== "string") return false;
  if (d.comment !== undefined && typeof d.comment !== "string") return false;
  if (d.bet_review !== undefined) {
    if (!d.bet_review || typeof d.bet_review !== "object" || Array.isArray(d.bet_review))
      return false;
    for (const val of Object.values(d.bet_review as Record<string, unknown>)) {
      if (val !== "hit" && val !== "miss" && val !== "n/a") return false;
    }
  }
  return true;
}

function isPayload(v: unknown): v is Payload {
  if (!v || typeof v !== "object" || Array.isArray(v)) return false;
  const d = v as Record<string, unknown>;
  const resultOk = d.result === null || isResult(d.result);
  const reviewOk = d.review === null || isReview(d.review);
  return resultOk && reviewOk;
}

class RaceResultBoundary extends Component<
  { children: ReactNode },
  { failed: boolean }
> {
  state = { failed: false };

  static getDerivedStateFromError(): { failed: boolean } {
    return { failed: true };
  }

  componentDidCatch(): void {
    // This section must never take the race page down.
  }

  render(): ReactNode {
    if (this.state.failed) return null;
    return this.props.children;
  }
}

const BET_LABELS: { key: keyof BetReview; label: string }[] = [
  { key: "win", label: "単勝" },
  { key: "place", label: "複勝" },
  { key: "umaren", label: "馬連" },
  { key: "wide", label: "ワイド" },
  { key: "sanrenpuku", label: "3連複" },
];

function markLabel(v: string): string {
  if (v === "hit") return "的中";
  if (v === "miss") return "外れ";
  return "対象外";
}

function formatDateTime(iso?: string): string {
  if (!iso) return "";
  const d = new Date(iso);
  if (Number.isNaN(d.getTime())) return "";
  return d.toLocaleString("ja-JP", {
    timeZone: "Asia/Tokyo",
    month: "numeric",
    day: "numeric",
    hour: "2-digit",
    minute: "2-digit",
  });
}

function RaceResultInner({ raceId }: { raceId: string }) {
  const [payload, setPayload] = useState<Payload | null>(null);

  useEffect(() => {
    let cancelled = false;
    setPayload(null);
    const load = async () => {
      try {
        const res = await fetch(`/api/race-result?race_id=${encodeURIComponent(raceId)}`, {
          cache: "no-store",
        });
        if (!res.ok) return;
        const body: unknown = await res.json();
        if (!cancelled && isPayload(body)) setPayload(body);
      } catch {
        // No result yet or DC unreachable: render nothing.
      }
    };
    void load();
    return () => {
      cancelled = true;
    };
  }, [raceId]);

  if (!payload || !payload.result) return null;
  const result = payload.result;
  const review = payload.review;
  const generatedLabel = formatDateTime(result.generated_at);
  const reviewLabel = formatDateTime(review?.generated_at);

  const betReviewLine = review?.bet_review
    ? BET_LABELS.filter(({ key }) => review.bet_review?.[key])
        .map(({ key, label }) => `${label}：${markLabel(review.bet_review?.[key] as string)}`)
        .join("　/　")
    : "";

  return (
    <>
      <div className="sectionhead">
        <b>07</b> 結果とやっちょの答え合わせ
      </div>
      {result.provisional && (
        <p className="recnote">※速報値です。確定後に変わる場合があります。</p>
      )}
      <div className="tablewrap">
        <table>
          <thead>
            <tr>
              <th>着順</th>
              <th>馬番</th>
              <th>馬名</th>
              <th>騎手</th>
              <th>人気</th>
              <th>単勝</th>
              <th>タイム</th>
              <th>着差</th>
              <th>上り3F</th>
            </tr>
          </thead>
          <tbody>
            {result.finish.map((f, i) => (
              <tr key={i}>
                <td>{f.status ? f.status : f.rank ?? "-"}</td>
                <td>{f.number}</td>
                <td>{f.name}</td>
                <td>{f.jockey ?? "-"}</td>
                <td>{f.popularity ?? "-"}</td>
                <td>{f.win_odds != null ? f.win_odds.toFixed(1) : "-"}</td>
                <td>{f.time ?? "-"}</td>
                <td>{f.margin ?? ""}</td>
                <td>{f.last_3f ?? "-"}</td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
      {result.payouts && result.payouts.length > 0 && (
        <section className="panel">
          {result.payouts.map((p, i) => (
            <div className="recbet" key={i}>
              <div className="recbethead">
                <span className="recbettype">{p.bet_type}</span>
                <span className="reccombo">{p.combo}</span>
                <span className="recodds">{p.payout.toLocaleString()}円</span>
              </div>
            </div>
          ))}
          <p className="recnote">配当は100円あたりの払戻金です。</p>
        </section>
      )}
      <section className="panel">
        {review ? (
          <>
            {review.result_summary && (
              <div className="recbet">
                <div className="recbethead">
                  <span className="recbettype">結果サマリー</span>
                </div>
                <div className="recwhy">{review.result_summary}</div>
              </div>
            )}
            {review.hit_note && (
              <div className="recbet">
                <div className="recbethead">
                  <span className="recbettype">総括</span>
                </div>
                <div className="recwhy">{review.hit_note}</div>
              </div>
            )}
            {betReviewLine && (
              <div className="recbet">
                <div className="recbethead">
                  <span className="recbettype">買い目別</span>
                </div>
                <div className="recwhy">{betReviewLine}</div>
              </div>
            )}
            {review.comment && (
              <div className="recbet">
                <div className="recbethead">
                  <span className="recbettype">答え合わせ</span>
                </div>
                {review.comment.split("\n").map((line, i) => (
                  <div className="recwhy" key={i}>
                    {line}
                  </div>
                ))}
              </div>
            )}
            <p className="recnote">
              AI予測と05 AIお勧め買い目に対するやっちょの振り返りです。
              {reviewLabel ? `（生成：${reviewLabel}）` : ""}
            </p>
          </>
        ) : (
          <p className="recnote">
            やっちょの答え合わせはまだです。
            {generatedLabel ? `（結果取得：${generatedLabel}）` : ""}
          </p>
        )}
      </section>
    </>
  );
}

export default function RaceResult(props: { raceId: string }) {
  return (
    <RaceResultBoundary>
      <RaceResultInner {...props} />
    </RaceResultBoundary>
  );
}
