"use client";

import { useCallback, useEffect, useState } from "react";
import { createClient } from "@/lib/supabase/client";

export const MARK_LABELS = {
  none: "無印",
  primary: "◎ 本命",
  secondary: "○ 対抗",
  third: "▲ 単穴",
  attention: "△ 注意",
} as const;
export type Mark = keyof typeof MARK_LABELS;
export const MARK_SYMBOLS: Record<Mark, string> = {
  none: "＋",
  primary: "◎",
  secondary: "○",
  third: "▲",
  attention: "△",
};
const CYCLE: Mark[] = ["none", "primary", "secondary", "third", "attention"];

// フォントの文字では印ごとに大きさ・太さがバラつくため、SVGで描く自作アイコン。
// 全印を同じ24×24グリッドで設計し、色はボタンの color（currentColor）に従う。
export function MarkIcon({ mark }: { mark: Mark }) {
  const common = { width: 20, height: 20, viewBox: "0 0 24 24", "aria-hidden": true } as const;
  switch (mark) {
    case "primary": // ◎
      return (
        <svg {...common}>
          <circle cx="12" cy="12" r="8.6" fill="none" stroke="currentColor" strokeWidth="2.6" />
          <circle cx="12" cy="12" r="3.6" fill="currentColor" />
        </svg>
      );
    case "secondary": // ○
      return (
        <svg {...common}>
          <circle cx="12" cy="12" r="8.6" fill="none" stroke="currentColor" strokeWidth="2.6" />
        </svg>
      );
    case "third": // ▲
      return (
        <svg {...common}>
          <path d="M12 4.2 L21 19.8 L3 19.8 Z" fill="currentColor" stroke="currentColor" strokeWidth="1.6" strokeLinejoin="round" />
        </svg>
      );
    case "attention": // △
      return (
        <svg {...common}>
          <path d="M12 4.6 L20.6 19.4 L3.4 19.4 Z" fill="none" stroke="currentColor" strokeWidth="2.4" strokeLinejoin="round" />
        </svg>
      );
    default: // 無印（＋）
      return (
        <svg {...common}>
          <path d="M12 6.5 V17.5 M6.5 12 H17.5" stroke="currentColor" strokeWidth="2.2" strokeLinecap="round" />
        </svg>
      );
  }
}
type SavedMark = { horse_number: number; mark: Mark; updated_at: string };

// 予想印の読み込みと、タップごとの即時保存（楽観的更新＋失敗時ロールバック）。
export function usePredictionMarks(raceId: string | null) {
  const [client] = useState(createClient);
  const [owner, setOwner] = useState<string | null>(null);
  const [marks, setMarks] = useState<Record<number, Mark>>({});
  const [status, setStatus] = useState<"loading" | "ready" | "error">("loading");
  const [note, setNote] = useState("");

  useEffect(() => {
    let active = true;
    async function load() {
      setMarks({});
      setNote("");
      if (!raceId) { setStatus("ready"); return; }
      setStatus("loading");
      try {
        const { data, error } = await client.auth.getUser();
        if (error || !data.user) throw new Error("予想印を読み込むにはログインが必要です。");
        const user = data.user;
        const response = await client.from("prediction_marks")
          .select("horse_number,mark,updated_at").eq("race_id", raceId).eq("user_id", user.id);
        if (response.error) {
          if (response.error.code === "PGRST205" || response.error.code === "42P01") {
            throw new Error("予想印の同期先が未設定です。");
          }
          throw new Error("予想印の読み込みに失敗しました。");
        }
        if (!active) return;
        setOwner(user.id);
        setMarks(Object.fromEntries((response.data as SavedMark[]).map(row => [row.horse_number, row.mark])));
        setStatus("ready");
      } catch (error) {
        if (!active) return;
        setNote(error instanceof Error ? error.message : "予想印の読み込みに失敗しました。");
        setStatus("error");
      }
    }
    void load();
    return () => { active = false; };
  }, [client, raceId]);

  const cycleMark = useCallback(async (horseNumber: number) => {
    if (!owner || !raceId || status !== "ready") return;
    const current = marks[horseNumber] ?? "none";
    const next = CYCLE[(CYCLE.indexOf(current) + 1) % CYCLE.length];
    setMarks(previous => ({ ...previous, [horseNumber]: next }));
    setNote("予想印を保存中…");
    try {
      const { error } = await client.from("prediction_marks")
        .upsert(
          { user_id: owner, race_id: raceId, horse_number: horseNumber, mark: next },
          { onConflict: "user_id,race_id,horse_number" },
        );
      if (error) throw error;
      setNote(`予想印を保存しました（${MARK_LABELS[next]}）`);
    } catch {
      setMarks(previous => ({ ...previous, [horseNumber]: current }));
      setNote("予想印の保存に失敗しました。もう一度押してください。");
    }
  }, [client, marks, owner, raceId, status]);

  return { marks, cycleMark, marksStatus: status, marksNote: note };
}
