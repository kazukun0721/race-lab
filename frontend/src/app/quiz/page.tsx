"use client";

import { useCallback, useState } from "react";

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

const SET_SIZE = 8;

export default function QuizPage() {
  const [phase, setPhase] = useState<Phase>("intro");
  const [questions, setQuestions] = useState<QuizQuestion[]>([]);
  const [idx, setIdx] = useState(0);
  const [picked, setPicked] = useState<number | null>(null);
  const [results, setResults] = useState<boolean[]>([]);
  const [error, setError] = useState("");

  const start = useCallback(async () => {
    setPhase("loading");
    setError("");
    try {
      const res = await fetch(`/api/quiz?count=${SET_SIZE}`, { cache: "no-store" });
      const body = await res.json();
      if (!res.ok || !Array.isArray(body.questions) || body.questions.length === 0) {
        throw new Error(body.error ?? "クイズを取得できませんでした。");
      }
      setQuestions(body.questions);
      setIdx(0);
      setPicked(null);
      setResults([]);
      setPhase("playing");
    } catch (e) {
      setError(e instanceof Error ? e.message : "クイズを取得できませんでした。");
      setPhase("error");
    }
  }, []);

  const q = questions[idx];
  const score = results.filter(Boolean).length;

  const pick = (n: number) => {
    if (picked !== null || !q) return;
    setPicked(n);
    setResults(prev => [...prev, n === q.answer]);
  };

  const next = () => {
    if (idx + 1 >= questions.length) {
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

  return (
    <div className="rl-quiz">
      <p className="eyebrow">HORSE QUIZ</p>
      <h1>馬クイズ</h1>
      <p className="sub">実在のレース記録から作った4択クイズ。名馬の戦績・血統・G1の勝ち馬当てなど、1セット{SET_SIZE}問。</p>

      {phase === "intro" && (
        <div className="panel center">
          <p className="lead">出題はすべて本物のデータから。問題は毎回ランダムに変わります。</p>
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
            <span className="chip">{q.label}</span>
            <span className="progress">{idx + 1} / {questions.length} 問目　・　正解 {score}</span>
          </div>
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
        @media(max-width:760px){.rl-quiz{padding:25px 15px 60px}.rl-quiz h1{font-size:27px}.rl-quiz .panel{padding:16px}.rl-quiz .question{font-size:16px}}
      `}</style>
    </div>
  );
}
