"use client";

import { Component, useEffect, useState } from "react";
import type { ReactNode } from "react";

type BetHorse = { num: number; name: string };
type FlowBet = { axis: number; partners: number[]; points?: number };
type YacchoBetsData = {
  race_id: string;
  generated_at?: string;
  verdict: "bet" | "no_bet";
  pace_note?: string;
  bets: {
    win?: BetHorse;
    place?: BetHorse;
    umaren?: FlowBet;
    wide?: FlowBet;
    sanrenpuku?: FlowBet;
  } | null;
  reasons?: string[];
  cautions?: string[];
};

function isHorse(v: unknown): v is BetHorse {
  if (!v || typeof v !== "object") return false;
  const h = v as Record<string, unknown>;
  return typeof h.num === "number" && Number.isFinite(h.num) && typeof h.name === "string";
}

function isFlow(v: unknown): v is FlowBet {
  if (!v || typeof v !== "object") return false;
  const f = v as Record<string, unknown>;
  return (
    typeof f.axis === "number" &&
    Number.isFinite(f.axis) &&
    Array.isArray(f.partners) &&
    f.partners.every(p => typeof p === "number" && Number.isFinite(p)) &&
    (f.points === undefined || (typeof f.points === "number" && Number.isFinite(f.points)))
  );
}

function isStringList(v: unknown): v is string[] {
  return Array.isArray(v) && v.every(s => typeof s === "string");
}

function isYacchoBetsData(v: unknown): v is YacchoBetsData {
  if (!v || typeof v !== "object" || Array.isArray(v)) return false;
  const d = v as Record<string, unknown>;
  if (d.verdict !== "bet" && d.verdict !== "no_bet") return false;
  if (d.pace_note !== undefined && typeof d.pace_note !== "string") return false;
  if (d.generated_at !== undefined && typeof d.generated_at !== "string") return false;
  if (d.reasons !== undefined && !isStringList(d.reasons)) return false;
  if (d.cautions !== undefined && !isStringList(d.cautions)) return false;
  if (d.bets === null || d.bets === undefined) return d.verdict === "no_bet";
  if (typeof d.bets !== "object" || Array.isArray(d.bets)) return false;
  const b = d.bets as Record<string, unknown>;
  if (b.win !== undefined && !isHorse(b.win)) return false;
  if (b.place !== undefined && !isHorse(b.place)) return false;
  if (b.umaren !== undefined && !isFlow(b.umaren)) return false;
  if (b.wide !== undefined && !isFlow(b.wide)) return false;
  if (b.sanrenpuku !== undefined && !isFlow(b.sanrenpuku)) return false;
  return true;
}

class YacchoBetsBoundary extends Component<
  { children: ReactNode; fallback: ReactNode },
  { failed: boolean }
> {
  state = { failed: false };

  static getDerivedStateFromError(): { failed: boolean } {
    return { failed: true };
  }

  componentDidCatch(): void {
    // This section must never take the race page down; the legacy
    // mechanical section is rendered instead.
  }

  render(): ReactNode {
    if (this.state.failed) return this.props.fallback;
    return this.props.children;
  }
}

function YacchoBetsInner({ raceId, fallback }: { raceId: string; fallback: ReactNode }) {
  const [data, setData] = useState<YacchoBetsData | null>(null);

  useEffect(() => {
    let cancelled = false;
    setData(null);
    const load = async () => {
      try {
        const res = await fetch(`/api/yaccho-bets?race_id=${encodeURIComponent(raceId)}`, {
          cache: "no-store",
        });
        if (!res.ok) return;
        const body: unknown = await res.json();
        if (!cancelled && isYacchoBetsData(body)) setData(body);
      } catch {
        // Not generated yet or DC unreachable: keep the legacy section.
      }
    };
    void load();
    return () => {
      cancelled = true;
    };
  }, [raceId]);

  if (!data) return <>{fallback}</>;

  const lines: { type: string; combo: string }[] = [];
  const b = data.verdict === "bet" ? data.bets : null;
  if (b) {
    if (b.win) lines.push({ type: "単勝", combo: `${b.win.num} ${b.win.name}` });
    if (b.place) lines.push({ type: "複勝", combo: `${b.place.num} ${b.place.name}` });
    if (b.umaren) {
      lines.push({ type: "馬連 [流し]", combo: `${b.umaren.axis} → ${b.umaren.partners.join("・")}` });
    }
    if (b.wide) {
      lines.push({ type: "ワイド [流し]", combo: `${b.wide.axis} → ${b.wide.partners.join("・")}` });
    }
    if (b.sanrenpuku) {
      lines.push({
        type: "3連複 [流し]",
        combo: `${b.sanrenpuku.axis} - ${b.sanrenpuku.partners.join("・")}${
          b.sanrenpuku.points ? `（${b.sanrenpuku.points}点）` : ""
        }`,
      });
    }
  }
  const generatedLabel = data.generated_at
    ? new Date(data.generated_at).toLocaleString("ja-JP", {
        timeZone: "Asia/Tokyo",
        month: "numeric",
        day: "numeric",
        hour: "2-digit",
        minute: "2-digit",
      })
    : "";

  return (
    <>
      <div className="sectionhead">
        <b>05</b> やっちょお勧め買い目
      </div>
      <section className="panel">
        {data.pace_note && (
          <div className="recbet">
            <div className="recbethead">
              <span className="recbettype">展開メモ</span>
            </div>
            <div className="recwhy">{data.pace_note}</div>
          </div>
        )}
        {data.verdict === "no_bet" && (
          <div className="recbet">
            <div className="recbethead">
              <span className="recbettype">見送り</span>
              <span className="reccombo">このレースは買い目なし</span>
            </div>
          </div>
        )}
        {lines.map((ln, i) => (
          <div className="recbet" key={i}>
            <div className="recbethead">
              <span className="recbettype">{ln.type}</span>
              <span className="reccombo">{ln.combo}</span>
            </div>
          </div>
        ))}
        {data.reasons && data.reasons.length > 0 && (
          <div className="recbet">
            <div className="recbethead">
              <span className="recbettype">根拠</span>
            </div>
            {data.reasons.map((r, i) => (
              <div className="recwhy" key={i}>
                ・{r}
              </div>
            ))}
          </div>
        )}
        {data.cautions && data.cautions.length > 0 && (
          <div className="recbet">
            <div className="recbethead">
              <span className="recbettype">注意・反証</span>
            </div>
            {data.cautions.map((r, i) => (
              <div className="recwhy" key={i}>
                ・{r}
              </div>
            ))}
          </div>
        )}
        <p className="recnote">
          やっちょがAI予測と脚質・展開データから考えた参考買い目です。回収率を保証するものではありません。
          {generatedLabel ? `（生成：${generatedLabel}）` : ""}
        </p>
      </section>
    </>
  );
}

export default function YacchoBets(props: { raceId: string; fallback: ReactNode }) {
  return (
    <YacchoBetsBoundary fallback={props.fallback}>
      <YacchoBetsInner {...props} />
    </YacchoBetsBoundary>
  );
}
