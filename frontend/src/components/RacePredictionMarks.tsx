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
