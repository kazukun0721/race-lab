"use client";

import { useEffect, useState } from "react";
import { createClient } from "@/lib/supabase/client";

const marks = {
  none: "無印",
  primary: "◎ 本命",
  secondary: "○ 対抗",
  third: "▲ 単穴",
  attention: "△ 注意",
} as const;
type Mark = keyof typeof marks;
type Entry = { horse_number: number; horse_name: string };
type SavedMark = { horse_number: number; mark: Mark; updated_at: string };

export function RacePredictionMarks({ raceId, entries }: { raceId: string; entries: Entry[] }) {
  const [client] = useState(createClient);
  const [owner, setOwner] = useState<string | null>(null);
  const [saved, setSaved] = useState<Record<number, SavedMark>>({});
  const [draft, setDraft] = useState<Record<number, Mark>>({});
  const [status, setStatus] = useState<"loading" | "ready" | "error">("loading");
  const [problem, setProblem] = useState("");
  const [message, setMessage] = useState("");
  const [pending, setPending] = useState(false);

  useEffect(() => {
    let active = true;
    async function load() {
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
        setSaved(Object.fromEntries((response.data as SavedMark[]).map(row => [row.horse_number, row])));
        setStatus("ready");
      } catch (error) {
        if (!active) return;
        setProblem(error instanceof Error ? error.message : "予想印の読み込みに失敗しました。");
        setStatus("error");
      }
    }
    void load();
    return () => { active = false; };
  }, [client, raceId]);

  async function save() {
    if (!owner || pending || status !== "ready") return;
    const pendingRows = entries.flatMap(entry => {
      const number = entry.horse_number;
      const mark = draft[number];
      if (!mark || mark === (saved[number]?.mark ?? "none")) return [];
      return [{ user_id: owner, race_id: raceId, horse_number: number, mark }];
    });
    if (!pendingRows.length) return;
    setPending(true);
    setProblem("");
    setMessage("");
    try {
      const { data: auth, error: authError } = await client.auth.getUser();
      if (authError || auth.user?.id !== owner) throw new Error("ログイン状態が変わりました。画面を開き直してください。");
      const response = await client.from("prediction_marks")
        .upsert(pendingRows, { onConflict: "user_id,race_id,horse_number" })
        .select("horse_number,mark,updated_at");
      if (response.error || response.data?.length !== pendingRows.length) {
        throw new Error("予想印の保存を確認できませんでした。入力を残しています。");
      }
      const confirmed = response.data as SavedMark[];
      if (!pendingRows.every(row => confirmed.some(result =>
        result.horse_number === row.horse_number && result.mark === row.mark && result.updated_at
      ))) throw new Error("保存結果を照合できませんでした。");
      setSaved(previous => ({
        ...previous, ...Object.fromEntries(confirmed.map(row => [row.horse_number, row])),
      }));
      setDraft(previous => {
        const next = { ...previous };
        for (const row of confirmed) delete next[row.horse_number];
        return next;
      });
      setMessage("予想印を保存しました。");
    } catch (error) {
      setProblem(error instanceof Error ? error.message : "予想印の保存に失敗しました。");
    } finally {
      setPending(false);
    }
  }

  const changed = entries.some(({ horse_number: number }) =>
    draft[number] !== undefined && draft[number] !== (saved[number]?.mark ?? "none"));
  return <section className="panel" aria-label="予想印">
    <h3>予想印</h3>
    {status === "loading" && <p role="status">予想印を読み込み中です。</p>}
    {problem && <p role="alert">{problem}</p>}
    {status === "ready" && entries.length > 0 && <>
      <div className="chips">
        {entries.map(({ horse_number: number, horse_name: name }) => <label key={number}>
          {number}番 {name}{" "}
          <select value={draft[number] ?? saved[number]?.mark ?? "none"} disabled={pending}
            onChange={event => {
              const mark = event.target.value as Mark;
              setDraft(previous => ({ ...previous, [number]: mark }));
              setMessage("");
            }}>
            {Object.entries(marks).map(([value, label]) => <option key={value} value={value}>{label}</option>)}
          </select>
          {saved[number]?.updated_at && <small> 保存時刻 <time dateTime={saved[number].updated_at}>{new Date(saved[number].updated_at).toLocaleString("ja-JP", { timeZone: "Asia/Tokyo" })}</time></small>}
        </label>)}
      </div>
      <button type="button" className="chip" disabled={!changed || pending} onClick={() => void save()}>
        {pending ? "保存中…" : "予想印を保存"}
      </button>
      {changed && !pending && <p>未保存の変更があります。</p>}
      {message && <p role="status">{message}</p>}
    </>}
  </section>;
}
