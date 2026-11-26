"use client";

import { useCallback, useRef, useState } from "react";
import { createClient } from "@/lib/supabase/client";

type QuizQuestion = {
  type: string;
  label: string;
  question: string;
  hints: string[];
  choices: string[];
  answer: number;
  explain: string;
};

type Phase = "intro" | "loading" | "playing" | "done" | "error";

type MemberStat = {
  user_id: string;
  display_name: string;
  sets: number;
  totalQuestions: number;
  totalCorrect: number;
  rate: number | null;
  best: { correct: number; total: number } | null;
  latest: { correct: number; total: number; at: string } | null;
};

const SET_SIZE = 8;

const DECADES = [
  { value: "all", label: "全年代" },
  { value: "1980", label: "1980年代" },
  { value: "1990", label: "1990年代" },
  { value: "2000", label: "2000年代" },
  { value: "2010", label: "2010年代" },
  { value: "2020", label: "2020年代" },
] as const;

type DecadeValue = (typeof DECADES)[number]["value"];

export default function QuizPage() {
  const [phase, setPhase] = useState<Phase>("intro");
  const [decade, setDecade] = useState<DecadeValue>("all");
  const [shortNote, setShortNote] = useState("");
  const [introNote, setIntroNote] = useState("");
  const [questions, setQuestions] = useState<QuizQuestion[]>([]);
  const [idx, setIdx] = useState(0);
  const [picked, setPicked] = useState<number | null>(null);
  const [results, setResults] = useState<boolean[]>([]);
  const [error, setError] = useState("");
  const savedRef = useRef(false);
  const [showStats, setShowStats] = useState(false);
  const [stats, setStats] = useState<MemberStat[] | null>(null);
  const [statsError, setStatsError] = useState("");
  const [statsLoading, setStatsLoading] = useState(false);

  const decadeLabel = DECADES.find(d => d.value === decade)?.label ?? "全年代";

  const start = useCallback(async () => {
    setPhase("loading");
    setError("");
    setShortNote("");
    setIntroNote("");
    try {
      const query = decade === "all" ? `count=${SET_SIZE}` : `count=${SET_SIZE}&decade=${decade}`;
      const res = await fetch(`/api/quiz?${query}`, { cache: "no-store" });
      const body = await res.json();
      if (!res.ok || !Array.isArray(body.questions)) {
        throw new Error(body.error ?? "クイズを取得できませんでした。");
      }
      if (body.questions.length === 0) {
        setIntroNote(
          decade === "all"
            ? "問題を作れませんでした。時間をおいてもう一度試してください。"
            : `${decadeLabel}では出題できる問題がありませんでした。別の年代を選んでください。`
        );
        setPhase("intro");
        return;
      }
      if (body.questions.length < SET_SIZE) {
        setShortNote(`${decadeLabel}は出題できる問題が${body.questions.length}問だったため、${body.questions.length}問で出題します。`);
      }
      setQuestions(body.questions);
      setIdx(0);
      setPicked(null);
      setResults([]);
      savedRef.current = false;
      setPhase("playing");
    } catch (e) {
      setError(e instanceof Error ? e.message : "クイズを取得できませんでした。");
      setPhase("error");
    }
  }, [decade, decadeLabel]);

  const q = questions[idx];
  const score = results.filter(Boolean).length;

  const pick = (n: number) => {
    if (picked !== null || !q) return;
    setPicked(n);
    setResults(prev => [...prev, n === q.answer]);
  };

  const saveResult = useCallback(async (finalResults: boolean[], total: number) => {
    if (savedRef.current) return;
    savedRef.current = true;
    try {
      const supabase = createClient();
      const { data: { user } } = await supabase.auth.getUser();
      if (!user) return;
      await supabase.from("quiz_results").insert({
        user_id: user.id,
        correct_count: finalResults.filter(Boolean).length,
        total_count: total,
      });
    } catch {
      // 成績の保存に失敗してもクイズの結果表示は妨げない
    }
  }, []);

  const next = () => {
    if (idx + 1 >= questions.length) {
      void saveResult(results, questions.length);
      setPhase("done");
    } else {
      setIdx(idx + 1);
      setPicked(null);
    }
  };

  const scoreComment = (s: number, total: number) => {
    if (s === total) return "全問正解。競馬場でその知識、普通に自慢できるレベル。";
    if (s >= total * 0.75) return "かなりの競馬通。あと一歩で全問正解。";
    if (s >= total * 0.5) return "いい線いってる。解説で知識を足していこう。";
    if (s >= total * 0.25) return "まずは名馬の名前と代表レースを押さえるところから。";
    return "伸びしろしかない。解説だけでも読んでいって。";
  };

  const loadStats = useCallback(async () => {
    setStatsLoading(true);
    setStatsError("");
    try {
      const supabase = createClient();
      const [resultsRes, membersRes] = await Promise.all([
        supabase.from("quiz_results").select("user_id, correct_count, total_count, created_at").order("created_at", { ascending: false }),
        supabase.from("group_members").select("user_id, display_name").eq("status", "active"),
      ]);
      if (resultsRes.error) throw new Error(resultsRes.error.message);
      if (membersRes.error) throw new Error(membersRes.error.message);
      const rows = (resultsRes.data ?? []) as { user_id: string; correct_count: number; total_count: number; created_at: string }[];
      const members = (membersRes.data ?? []) as { user_id: string; display_name: string }[];
      const byUser = new Map<string, typeof rows>();
      for (const r of rows) {
        const arr = byUser.get(r.user_id) ?? [];
        arr.push(r);
        byUser.set(r.user_id, arr);
      }
      const merged: MemberStat[] = members.map(m => {
        const mine = byUser.get(m.user_id) ?? [];
        const totalQuestions = mine.reduce((a, r) => a + r.total_count, 0);
        const totalCorrect = mine.reduce((a, r) => a + r.correct_count, 0);
        const bestRow = mine.length
          ? [...mine].sort((a, b) => (b.correct_count / b.total_count) - (a.correct_count / a.total_count) || b.correct_count - a.correct_count)[0]
          : null;
        const latestRow = mine[0] ?? null;
        return {
          user_id: m.user_id,
          display_name: m.display_name,
          sets: mine.length,
          totalQuestions,
          totalCorrect,
          rate: totalQuestions > 0 ? (totalCorrect / totalQuestions) * 100 : null,
          best: bestRow ? { correct: bestRow.correct_count, total: bestRow.total_count } : null,
          latest: latestRow ? { correct: latestRow.correct_count, total: latestRow.total_count, at: latestRow.created_at } : null,
        };
      });
      merged.sort((a, b) => b.sets - a.sets || (b.rate ?? -1) - (a.rate ?? -1));
      setStats(merged);
    } catch {
      setStatsError("成績を取得できませんでした。");
      setStats(null);
    } finally {
      setStatsLoading(false);
    }
  }, []);

  const toggleStats = () => {
    const nextShow = !showStats;
    setShowStats(nextShow);
    if (nextShow) void loadStats();
  };

  const fmtDate = (iso: string) => {
    const d = new Date(iso);
    return `${d.getMonth() + 1}/${d.getDate()}`;
  };

  return (
    <div className="rl-quiz">
      <p className="eyebrow">HORSE QUIZ</p>
      <h1>馬クイズ</h1>
      <p className="sub">実在のレース記録から作った4択クイズ。名馬の戦績・血統・G1の勝ち馬当てなど、1セット{SET_SIZE}問。</p>

      {phase === "intro" && (
        <div className="panel center">
          <p className="lead">出題はすべて本物のデータから。問題は毎回ランダムに変わります。</p>
          <p className="decadeTitle">出題する年代</p>
          <div className="decadeRow">
            {DECADES.map(d => (
              <button
                key={d.value}
                type="button"
                className={`decadeChip${decade === d.value ? " on" : ""}`}
                onClick={() => setDecade(d.value)}
              >
                {d.label}
              </button>
            ))}
          </div>
          <p className="note">年代を選ぶと、その年代に生まれた馬と、その年代に開催されたG1だけで出題します。</p>
          {introNote && <p className="note warn">{introNote}</p>}
          <button type="button" className="primary" onClick={() => void start()}>クイズをはじめる</button>
        </div>
      )}

      {phase === "loading" && <div className="panel center"><p className="lead">問題を用意しています…</p></div>}

      {phase === "error" && (
        <div className="panel center">
          <p className="lead">{error}</p>
          <p className="note">データ取得はPC側のサービス経由です。PCが起動していないと出題できません。</p>
          <button type="button" className="primary" onClick={() => void start()}>もう一度試す</button>
        </div>
      )}

      {phase === "playing" && q && (
        <div className="panel">
          <div className="meta">
            <span className="chips">
              <span className="chip">{q.label}</span>
              {decade !== "all" && <span className="chip era">{decadeLabel}</span>}
            </span>
            <span className="progress">{idx + 1} / {questions.length} 問目　・　正解 {score}</span>
          </div>
          {shortNote && <p className="shortNote">{shortNote}</p>}
          <p className="question">{q.question}</p>
          {q.hints.length > 0 && (
            <ul className="hints">
              {q.hints.map((h, i) => <li key={i}>ヒント：{h}</li>)}
            </ul>
          )}
          <div className="choices">
            {q.choices.map((c, i) => {
              const state = picked === null ? "" : i === q.answer ? " correct" : i === picked ? " wrong" : " dim";
              return (
                <button
                  key={i}
                  type="button"
                  className={`choice${state}`}
                  disabled={picked !== null}
                  onClick={() => pick(i)}
                >
                  {c}
                  {picked !== null && i === q.answer && <span className="mark">○</span>}
                  {picked !== null && i === picked && i !== q.answer && <span className="mark">×</span>}
                </button>
              );
            })}
          </div>
          {picked !== null && (
            <div className="explain">
              <p className={picked === q.answer ? "verdict ok" : "verdict ng"}>
                {picked === q.answer ? "正解！" : `残念、正解は「${q.choices[q.answer]}」`}
              </p>
              <p className="explainText">{q.explain}</p>
              <button type="button" className="primary" onClick={next}>
                {idx + 1 >= questions.length ? "結果を見る" : "次の問題へ"}
              </button>
            </div>
          )}
        </div>
      )}

      {phase === "done" && (
        <div className="panel">
          <p className="scoreLine">{questions.length}問中 <b>{score}問</b> 正解</p>
          <p className="lead">{scoreComment(score, questions.length)}</p>
          {shortNote && <p className="note warn">{shortNote}</p>}
          <div className="reviewList">
            {questions.map((item, i) => (
              <div key={i} className="reviewRow">
                <span className={results[i] ? "verdict ok" : "verdict ng"}>{results[i] ? "○" : "×"}</span>
                <div>
                  <p className="reviewQ">{item.question}</p>
                  <p className="reviewA">正解：{item.choices[item.answer]}</p>
                </div>
              </div>
            ))}
          </div>
          <button type="button" className="primary" onClick={() => void start()}>もう1セットやる</button>
          <button type="button" className="ghostBtn" onClick={() => setPhase("intro")}>年代を変えてやる</button>
        </div>
      )}

      <div className="statsEntry">
        <button type="button" className="statsLink" onClick={toggleStats}>成績</button>
      </div>

      {showStats && (
        <div className="statsPanel">
          <p className="statsTitle">クイズ成績（メンバー別）</p>
          {statsLoading && <p className="statsNote">読み込み中…</p>}
          {!statsLoading && statsError && <p className="statsNote">{statsError}</p>}
          {!statsLoading && !statsError && stats && stats.every(s => s.sets === 0) && (
            <p className="statsNote">まだ記録がありません。クイズを1セット終えると、ここに成績が残ります。</p>
          )}
          {!statsLoading && !statsError && stats && stats.some(s => s.sets > 0) && (
            <div>
              {stats.map(s => (
                <div key={s.user_id} className="statsRow">
                  <span className="statsName">{s.display_name}</span>
                  {s.sets === 0 ? (
                    <span className="statsVals">まだプレイなし</span>
                  ) : (
                    <span className="statsVals">
                      {s.sets}セット ・ {s.totalQuestions}問中{s.totalCorrect}問正解 ・ 正答率{s.rate?.toFixed(1)}%
                      {s.best && <> ・ ベスト {s.best.total}問中{s.best.correct}問</>}
                      {s.latest && <> ・ 直近 {fmtDate(s.latest.at)} {s.latest.total}問中{s.latest.correct}問</>}
                    </span>
                  )}
                </div>
              ))}
            </div>
          )}
        </div>
      )}

      <style>{`
        .rl-quiz{max-width:760px;margin:0 auto;padding:36px 20px 80px;color:var(--rl-text);font-family:Arial,'Noto Sans JP',sans-serif}
        .rl-quiz .eyebrow{color:var(--rl-accent-bright);font-size:10px;font-weight:900;letter-spacing:2px;margin:0 0 10px}
        .rl-quiz h1{font-size:32px;margin:0 0 8px;letter-spacing:-.5px}
        .rl-quiz .sub{color:var(--rl-muted);font-size:13px;line-height:1.7;margin:0 0 24px}
        .rl-quiz .panel{border:1px solid var(--rl-border);background:var(--rl-panel);border-radius:12px;padding:22px}
        .rl-quiz .center{text-align:center}
        .rl-quiz .lead{font-size:14px;line-height:1.8;margin:6px 0 18px}
        .rl-quiz .note{font-size:12px;color:var(--rl-muted);line-height:1.7;margin:0 0 18px}
        .rl-quiz .primary{background:var(--rl-accent-bright);color:var(--rl-accent-bg);padding:14px 22px;border:0;border-radius:8px;font-weight:900;font-size:14px;cursor:pointer;width:100%}
        .rl-quiz .meta{display:flex;justify-content:space-between;align-items:center;gap:10px;flex-wrap:wrap;margin-bottom:14px}
        .rl-quiz .chip{background:var(--rl-accent-bg);color:var(--rl-accent-bright);border:1px solid var(--rl-accent);padding:6px 11px;border-radius:999px;font-weight:800;font-size:11px}
        .rl-quiz .progress{color:var(--rl-muted);font-size:12px;font-weight:700}
        .rl-quiz .question{font-size:17px;font-weight:800;line-height:1.6;margin:0 0 12px}
        .rl-quiz .hints{list-style:none;margin:0 0 16px;padding:10px 14px;background:var(--rl-hover);border-radius:8px}
        .rl-quiz .hints li{font-size:12.5px;line-height:1.8;color:var(--rl-sub)}
        .rl-quiz .choices{display:grid;gap:10px}
        .rl-quiz .choice{display:flex;justify-content:space-between;align-items:center;gap:10px;min-height:56px;padding:13px 16px;border:1px solid var(--rl-border);border-radius:10px;background:var(--rl-bg);color:var(--rl-text);font-size:15px;font-weight:700;text-align:left;cursor:pointer}
        .rl-quiz .choice:disabled{cursor:default}
        .rl-quiz .choice.correct{border-color:#30a46c;background:rgba(48,164,108,.14);color:#30a46c}
        .rl-quiz .choice.wrong{border-color:#e5484d;background:rgba(229,72,77,.12);color:#e5484d}
        .rl-quiz .choice.dim{opacity:.55}
        .rl-quiz .mark{font-weight:900;font-size:17px}
        .rl-quiz .explain{margin-top:16px;border-top:1px solid var(--rl-border);padding-top:14px}
        .rl-quiz .verdict{font-weight:900;font-size:15px;margin:0 0 8px}
        .rl-quiz .verdict.ok{color:#30a46c}.rl-quiz .verdict.ng{color:#e5484d}
        .rl-quiz .explainText{font-size:13px;line-height:1.8;color:var(--rl-sub);margin:0 0 16px}
        .rl-quiz .scoreLine{font-size:19px;margin:0 0 6px}.rl-quiz .scoreLine b{color:var(--rl-accent-bright);font-size:24px}
        .rl-quiz .reviewList{margin:18px 0}
        .rl-quiz .reviewRow{display:flex;gap:12px;padding:10px 0;border-bottom:1px solid var(--rl-border)}
        .rl-quiz .reviewRow:last-child{border-bottom:0}
        .rl-quiz .reviewRow .verdict{font-size:16px;margin:0}
        .rl-quiz .reviewQ{font-size:13px;font-weight:700;margin:0 0 3px;line-height:1.6}
        .rl-quiz .reviewA{font-size:12px;color:var(--rl-muted);margin:0}
        .rl-quiz .statsEntry{text-align:right;margin-top:26px}
        .rl-quiz .statsLink{background:none;border:0;padding:4px 2px;font-size:11px;letter-spacing:1px;color:var(--rl-muted);opacity:.55;cursor:pointer;text-decoration:underline;text-underline-offset:3px}
        .rl-quiz .statsPanel{margin-top:10px;border:1px solid var(--rl-border);border-radius:10px;padding:14px 16px;background:var(--rl-panel)}
        .rl-quiz .statsTitle{font-size:12px;font-weight:800;color:var(--rl-sub);margin:0 0 8px}
        .rl-quiz .statsNote{font-size:12px;color:var(--rl-muted);line-height:1.7;margin:0}
        .rl-quiz .statsRow{display:flex;gap:10px;flex-wrap:wrap;align-items:baseline;padding:7px 0;border-bottom:1px solid var(--rl-border)}
        .rl-quiz .statsRow:last-child{border-bottom:0}
        .rl-quiz .statsName{font-size:13px;font-weight:800;min-width:64px}
        .rl-quiz .statsVals{font-size:12px;color:var(--rl-sub);line-height:1.7}
        .rl-quiz .decadeTitle{font-size:12px;font-weight:800;color:var(--rl-sub);letter-spacing:1px;margin:0 0 10px}
        .rl-quiz .decadeRow{display:flex;flex-wrap:wrap;gap:8px;justify-content:center;margin:0 0 12px}
        .rl-quiz .decadeChip{min-height:44px;padding:10px 14px;border:1px solid var(--rl-border);border-radius:999px;background:var(--rl-bg);color:var(--rl-sub);font-size:13px;font-weight:800;cursor:pointer}
        .rl-quiz .decadeChip.on{border-color:var(--rl-accent);background:var(--rl-accent-bg);color:var(--rl-accent-bright)}
        .rl-quiz .note.warn{color:#e5a13d}
        .rl-quiz .shortNote{font-size:12px;color:#e5a13d;line-height:1.7;margin:0 0 12px}
        .rl-quiz .chips{display:flex;gap:6px;flex-wrap:wrap}
        .rl-quiz .chip.era{background:var(--rl-hover);border-color:var(--rl-border);color:var(--rl-sub)}
        .rl-quiz .ghostBtn{margin-top:10px;background:none;border:1px solid var(--rl-border);color:var(--rl-sub);padding:12px 22px;border-radius:8px;font-weight:800;font-size:13px;cursor:pointer;width:100%}
        @media(max-width:760px){.rl-quiz{padding:25px 15px 60px}.rl-quiz h1{font-size:27px}.rl-quiz .panel{padding:16px}.rl-quiz .question{font-size:16px}}
      `}</style>
    </div>
  );
}
