"use client";

import { Component, useEffect, useRef, useState } from "react";
import type { ReactNode } from "react";

export type RaceChatContext = {
  race: string;
  entries: { num: number; name: string; jockey: string }[];
  top: { num: number; name: string; probPct: number }[];
  recSummary: string;
  marks?: string;
};

type ChatMessage = {
  id: number;
  ts?: string;
  role: string;
  text: string;
};

class RaceChatBoundary extends Component<{ children: ReactNode }, { failed: boolean }> {
  state = { failed: false };

  static getDerivedStateFromError(): { failed: boolean } {
    return { failed: true };
  }

  componentDidCatch(): void {
    // The chat must never take the race page down with it.
  }

  render(): ReactNode {
    if (this.state.failed) {
      return (
        <section className="panel">
          <p style={{ fontSize: 12, color: "var(--rl-muted)" }}>チャットを読み込めませんでした。</p>
        </section>
      );
    }
    return this.props.children;
  }
}

function RaceChatInner({ raceId, context }: { raceId: string; context: RaceChatContext }) {
  const [messages, setMessages] = useState<ChatMessage[]>([]);
  const [input, setInput] = useState("");
  const [sending, setSending] = useState(false);
  const [sendError, setSendError] = useState("");
  const lastIdRef = useRef(0);
  const tempIdRef = useRef(-1);
  const scrollRef = useRef<HTMLDivElement | null>(null);
  const stickRef = useRef(true);

  useEffect(() => {
    let cancelled = false;
    lastIdRef.current = 0;
    setMessages([]);
    setSendError("");
    const mergeMessages = (incoming: ChatMessage[]) => {
      if (incoming.length === 0) return;
      setMessages(prev => {
        const byId = new Map<number, ChatMessage>();
        for (const m of prev) if (m.id > 0) byId.set(m.id, m);
        for (const m of incoming) if (m.id > 0) byId.set(m.id, m);
        const merged = [...byId.values()].sort((a, b) => a.id - b.id);
        for (const m of merged) lastIdRef.current = Math.max(lastIdRef.current, m.id);
        return [...merged, ...prev.filter(m => m.id < 0)];
      });
    };
    const fetchList = async () => {
      try {
        const res = await fetch(
          `/api/race-chat?race_id=${encodeURIComponent(raceId)}&after=${lastIdRef.current}`,
          { cache: "no-store" },
        );
        if (!res.ok) return;
        const body = (await res.json()) as { messages?: ChatMessage[] };
        if (cancelled || !Array.isArray(body.messages)) return;
        mergeMessages(body.messages);
      } catch {
        // Poll quietly; the next tick retries.
      }
    };
    void fetchList();
    const timer = setInterval(() => {
      void fetchList();
    }, 5000);
    return () => {
      cancelled = true;
      clearInterval(timer);
    };
  }, [raceId]);

  useEffect(() => {
    const el = scrollRef.current;
    if (el && stickRef.current) el.scrollTop = el.scrollHeight;
  }, [messages]);

  const send = async () => {
    const text = input.trim();
    if (!text || sending) return;
    setSending(true);
    setSendError("");
    const tempId = tempIdRef.current;
    tempIdRef.current -= 1;
    setMessages(prev => [...prev, { id: tempId, role: "user", text }]);
    setInput("");
    stickRef.current = true;
    try {
      const res = await fetch("/api/race-chat", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ race_id: raceId, text, context }),
      });
      if (!res.ok) throw new Error("send failed");
      const body = (await res.json()) as { ok?: boolean; message?: ChatMessage };
      const stored = body.message;
      setMessages(prev => {
        const withoutTemp = prev.filter(m => m.id !== tempId);
        if (stored && stored.id > 0) {
          lastIdRef.current = Math.max(lastIdRef.current, stored.id);
          const byId = new Map<number, ChatMessage>();
          for (const m of withoutTemp) if (m.id > 0) byId.set(m.id, m);
          byId.set(stored.id, stored);
          const merged = [...byId.values()].sort((a, b) => a.id - b.id);
          return [...merged, ...withoutTemp.filter(m => m.id < 0)];
        }
        return withoutTemp;
      });
    } catch {
      setMessages(prev => prev.filter(m => m.id !== tempId));
      setInput(text);
      setSendError("送信できませんでした。時間をおいて再度お試しください。");
    } finally {
      setSending(false);
    }
  };

  const visible = messages.slice(-100);

  return (
    <section className="panel">
      <div
        ref={scrollRef}
        onScroll={() => {
          const el = scrollRef.current;
          if (el) stickRef.current = el.scrollHeight - el.scrollTop - el.clientHeight < 48;
        }}
        style={{
          maxHeight: 320,
          overflowY: "auto",
          display: "flex",
          flexDirection: "column",
          gap: 8,
          marginBottom: 12,
        }}
      >
        {visible.length === 0 && (
          <p style={{ fontSize: 12, color: "var(--rl-muted)", lineHeight: 1.7 }}>
            このレースについてAIに質問できます。例：「1位の根拠は？」「穴馬はいる？」
          </p>
        )}
        {visible.map(m => {
          const mine = m.role === "user";
          return (
            <div key={m.id} style={{ display: "flex", justifyContent: mine ? "flex-end" : "flex-start" }}>
              <div
                style={{
                  maxWidth: "85%",
                  padding: "8px 11px",
                  borderRadius: 10,
                  fontSize: 12,
                  lineHeight: 1.7,
                  whiteSpace: "pre-wrap",
                  wordBreak: "break-word",
                  background: mine ? "var(--green)" : "var(--rl-hover)",
                  color: mine ? "var(--rl-accent-bg)" : "var(--rl-text)",
                }}
              >
                {m.text}
                {m.ts && (
                  <div style={{ fontSize: 9, opacity: 0.7, marginTop: 3, textAlign: "right" }}>
                    {new Date(m.ts).toLocaleTimeString("ja-JP", { hour: "2-digit", minute: "2-digit" })}
                  </div>
                )}
              </div>
            </div>
          );
        })}
      </div>
      <div style={{ display: "flex", gap: 8, alignItems: "flex-end" }}>
        <textarea
          value={input}
          onChange={e => setInput(e.target.value)}
          maxLength={1000}
          rows={2}
          placeholder="AIへの質問を書く（1000字まで）"
          style={{
            flex: 1,
            border: "1px solid var(--rl-border)",
            borderRadius: 8,
            padding: "8px 10px",
            fontSize: 13,
            background: "transparent",
            color: "var(--rl-text)",
            resize: "none",
            fontFamily: "inherit",
          }}
        />
        <button
          type="button"
          className="primary"
          onClick={() => void send()}
          disabled={sending || input.trim().length === 0}
        >
          送信
        </button>
      </div>
      {sendError && (
        <p style={{ fontSize: 11, color: "var(--rl-danger-text)", marginTop: 8 }}>{sendError}</p>
      )}
      <p style={{ fontSize: 10, color: "var(--rl-muted)", marginTop: 10, lineHeight: 1.6 }}>
        返事はAIが手作業で返すので、少し時間がかかります。PCが起動していないと返事は来ません。
      </p>
    </section>
  );
}

export default function RaceChat(props: { raceId: string; context: RaceChatContext }) {
  return (
    <RaceChatBoundary>
      <RaceChatInner {...props} />
    </RaceChatBoundary>
  );
}
