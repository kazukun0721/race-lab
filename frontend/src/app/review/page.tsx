"use client";

import { useCallback, useEffect, useState } from "react";
import Link from "next/link";
import "./review-step468.css";
import { FIXED_MODEL_VERSION } from "@/lib/fixed-model";
import { createClient } from "@/lib/supabase/client";

type Bet = {
  id: string; user_id: string; sport: string; race_date: string; venue: string;
  race_number: number; bet_type: string; selection: string; stake: number;
  odds: number | null; is_hit: boolean | null; payout: number | null;
  settled_at: string | null; race_id: string | null;
  referenced_ai_prediction_id: string | null; referenced_ai_model_version: string | null;
  referenced_ai_win_probability: number | null; referenced_ai_expected_return: number | null;
  referenced_ai_created_at: string | null;
};

type ModelMetric = {
  data_group: string; race_date: string; venue: string; race_number: number;
  model_version: string; prediction_mode: string; result_order: string | null;
  payouts_confirmed: boolean | null; predicted_horses: number;
  valid_probabilities: number; probability_sum: number | null;
  buy_horses: number; buy_winners: number; brier_score: number | null;
  winner_predicted_pct: number | null; evaluation_status: string;
};

const metricStatus: Record<string, string> = {
  TEST_ONLY_NOT_REAL_PERFORMANCE: "テスト専用（実績対象外）",
  PROBABILITY_SUM_WARNING: "勝率合計に問題あり（評価保留）",
  INVALID_PROBABILITY: "勝率の値が不正（評価保留）",
  WINNER_NOT_PREDICTED: "勝ち馬の予測なし（評価保留）",
  NO_RESULT: "結果未登録",
  DUPLICATE_RESULTS: "結果レコード重複（評価保留）",
  INVALID_RESULT_FORMAT: "結果形式が不正（評価保留）",
  UNKNOWN_SOURCE: "データ出所不明（評価保留）",
  PROVISIONAL_UNCONFIRMED: "結果未確認（暫定）",
  REAL_CANDIDATE_CHECK_SOURCE: "実績候補（出所・事前予測の検証待ち）",
};

type AiReview = {
  prediction_id: string;
  ai_prediction_id: string | null;
  model_version: string | null;
  win_probability: number | null;
  odds_at_prediction: number | null;
  ai_created_at: string | null;
  ai_timing_status: "NO_AI" | "POST_REGISTERED" | "PRE_REGISTERED";
  expected_roi_percent: number | null;
  prediction_registered_at: string;
};

const formatJst = (value: string) => new Date(value).toLocaleString("ja-JP", {
  timeZone: "Asia/Tokyo", year: "numeric", month: "2-digit", day: "2-digit",
  hour: "2-digit", minute: "2-digit",
});

export default function ReviewPage() {
  const [supabase] = useState(() => createClient());
  const [bets, setBets] = useState<Bet[]>([]);
  const [loading, setLoading] = useState(true);
  const [busyId, setBusyId] = useState<string | null>(null);
  const [message, setMessage] = useState("");
  const [amounts, setAmounts] = useState<Record<string, string>>({});
  const [aiByBet, setAiByBet] = useState<Record<string, AiReview[]>>({});
  const [aiError, setAiError] = useState("");
  const [raceKinds, setRaceKinds] = useState<Record<string, "TEST" | "REAL" | "UNKNOWN">>({});
  const [raceError, setRaceError] = useState("");
  const [sportFilter, setSportFilter] = useState("all");
  const [dataFilter, setDataFilter] = useState("all");
  const [modelMetrics, setModelMetrics] = useState<ModelMetric[]>([]);
  const [modelError, setModelError] = useState("");
  const [modelFilter, setModelFilter] = useState("all");

  const reload = useCallback(async () => {
    const { data: auth, error: authError } = await supabase.auth.getUser();
    if (authError || !auth.user) {
      window.location.assign("/login");
      return;
    }
    const { data, error } = await supabase.from("predictions")
      .select("id,user_id,sport,race_date,venue,race_number,bet_type,selection,stake,odds,is_hit,payout,settled_at,race_id,referenced_ai_prediction_id,referenced_ai_model_version,referenced_ai_win_probability,referenced_ai_expected_return,referenced_ai_created_at")
      .eq("user_id", auth.user.id)
      .order("race_date", { ascending: false })
      .limit(500);
    if (error) setMessage(`取得失敗: ${error.message}`);
    else {
      const rows = (data ?? []) as Bet[];
      setBets(rows);
      const ids = [...new Set(rows.map(b => b.race_id).filter((id): id is string => Boolean(id)))];
      if (ids.length) {
        const { data: races, error: raceLookupError } = await supabase.from("horse_races")
          .select("id,is_test,data_source").in("id", ids);
        if (raceLookupError) {
          setRaceKinds({});
          setRaceError(`レース区分の取得失敗: ${raceLookupError.message}`);
        } else {
          const kinds: Record<string, "TEST" | "REAL" | "UNKNOWN"> = {};
          for (const r of races ?? []) {
            kinds[r.id] = r.is_test === true || r.data_source === "synthetic"
              ? "TEST" : r.is_test === false && r.data_source !== "unknown" && r.data_source !== "synthetic"
                ? "REAL" : "UNKNOWN";
          }
          setRaceKinds(kinds);
          setRaceError("");
        }
      } else { setRaceKinds({}); setRaceError(""); }
    }

    // 集計は購入履歴とは独立。RPCが未導入でも既存機能は利用可能。
    const { data: metrics, error: metricError } = await supabase.rpc("race_lab_model_metrics")
      .eq("model_version", FIXED_MODEL_VERSION).lt("race_date", "2026-01-01");
    if (metricError) {
      setModelError(`モデル診断の取得失敗: ${metricError.message}（第304工程SQLの適用を確認）`);
      setModelMetrics([]);
    } else {
      setModelMetrics((metrics ?? []) as ModelMetric[]);
      setModelError("");
    }

    // AI照合は任意の補助情報。失敗しても結果登録・収支集計を止めない。
    const { data: reviews, error: reviewError } = await supabase
      .from("prediction_ai_review")
      .select("prediction_id,ai_prediction_id,model_version,win_probability,odds_at_prediction,ai_created_at,ai_timing_status,expected_roi_percent,prediction_registered_at")
      .eq("user_id", auth.user.id)
      .eq("model_version", FIXED_MODEL_VERSION)
      .limit(2000);
    if (reviewError) {
      setAiError(`AI照合データを取得できません: ${reviewError.message}`);
      setAiByBet({});
    } else {
      const grouped: Record<string, AiReview[]> = {};
      for (const row of (reviews ?? []) as AiReview[]) {
        (grouped[row.prediction_id] ??= []).push(row);
      }
      for (const rows of Object.values(grouped)) {
        rows.sort((a, b) => (b.ai_created_at ?? "").localeCompare(a.ai_created_at ?? ""));
      }
      setAiByBet(grouped);
      setAiError("");
    }
    setLoading(false);
  }, [supabase]);

  useEffect(() => { void reload(); }, [reload]);

  async function settle(bet: Bet, hit: boolean) {
    const payout = hit ? Number(amounts[bet.id]) : 0;
    if (hit && (!Number.isInteger(payout) || payout <= 0)) {
      setMessage("的中時は払戻金額（正の整数）を入力してください。");
      return;
    }
    if (!window.confirm(`${bet.venue}${bet.race_number}Rの結果を${hit ? `的中・払戻${payout}円` : "不的中"}で確定しますか？`)) return;
    setBusyId(bet.id);
    setMessage("");
    const { data: auth } = await supabase.auth.getUser();
    if (!auth.user) { setMessage("再ログインしてください。"); setBusyId(null); return; }
    const { data, error } = await supabase.from("predictions")
      .update({ is_hit: hit, payout, settled_at: new Date().toISOString() })
      .eq("id", bet.id).eq("user_id", auth.user.id)
      .is("settled_at", null)
      .select("id");
    if (error) setMessage(`保存失敗: ${error.message}`);
    else if (!data?.length) setMessage("更新されませんでした。既に確定済みか、更新権限がありません。");
    else { setMessage("結果を保存しました。"); await reload(); }
    setBusyId(null);
  }

  const kindOf = (b: Bet): "TEST" | "REAL" | "UNKNOWN" =>
    b.race_id ? (raceKinds[b.race_id] ?? "UNKNOWN") : "UNKNOWN";
  const filteredBets = bets.filter(b =>
    (sportFilter === "all" || b.sport === sportFilter) &&
    (dataFilter === "all" || kindOf(b) === dataFilter)
  );
  const settled = filteredBets.filter(b => b.settled_at !== null && b.is_hit !== null && b.payout !== null);
  const stake = settled.reduce((n, b) => n + b.stake, 0);
  const payout = settled.reduce((n, b) => n + (b.payout ?? 0), 0);
  const hits = settled.filter(b => b.is_hit).length;
  const aiReferenced = filteredBets.filter(b => b.referenced_ai_prediction_id !== null && b.referenced_ai_model_version === FIXED_MODEL_VERSION);
  const aiSettled = aiReferenced.filter(b => b.settled_at !== null && b.is_hit !== null && b.payout !== null);
  const aiStake = aiSettled.reduce((n, b) => n + b.stake, 0);
  const aiPayout = aiSettled.reduce((n, b) => n + (b.payout ?? 0), 0);
  const uniqueAi = new Set(aiReferenced.map(b => b.referenced_ai_prediction_id)).size;
  const yen = (n: number) => `${n.toLocaleString("ja-JP")}円`;

  return (
    <main className="rl-review-shell">
      <aside className="rl-review-sidebar">
        <Link href="/" className="rl-review-logo">RACE LAB<span>.</span></Link>
        <div className="rl-review-nav-label">WORKSPACE</div>
        <nav aria-label="メインメニュー">
          <Link href="/">⌂　ダッシュボード</Link>
          <Link href="/races/auto">▤　レース一覧</Link>
          <Link href="/races/horse">◎　AI予測</Link>
          <Link href="/review" className="active" aria-current="page">▥　予測レビュー</Link>
          <Link href="/ranking">▦　ランキング</Link>
          <Link href="/mypage">◇　マイページ</Link>
        </nav>
        <div className="rl-review-sidebar-foot">● PRIVATE WORKSPACE</div>
      </aside>
      <div className="rl-review-main">
        <div className="rl-review-topbar"><span>WORKSPACE　/　PREDICTION REVIEW</span><Link href="/">OVERVIEW ↗</Link></div>
        <div className="rl-review-content">
          <div className="rl-review-eyebrow">● RACE INTELLIGENCE / REVIEW</div>
        <Link href="/predictions" style={{ color: "#93c5fd" }}>← 予想登録に戻る</Link>
        <h1>予測レビュー<span className="rl-review-title-dot">.</span></h1>
        <p style={{ color: "var(--rl-muted)" }}>本人の登録済み買い目を集計します。結果は手入力です。AI予測の生成時刻と購入登録時刻を照合します（AIによる原因推定は未実装）。</p>
        {loading ? <p>読み込み中...</p> : <>
          <section style={{ background: "var(--rl-hover)", padding: 20, borderRadius: 12, marginBottom: 24 }}>
            <h2>📈 成績ダッシュボード</h2>
            <div style={{ display: "flex", gap: 16, flexWrap: "wrap", marginBottom: 12 }}>
              <label>競技 <select aria-label="競技フィルター" value={sportFilter} onChange={e => setSportFilter(e.target.value)} style={{ padding: 8, marginLeft: 8 }}>
                <option value="all">すべて</option><option value="horse">競馬</option><option value="boat">競艇</option>
              </select></label>
              <label>データ区分 <select aria-label="データ区分フィルター" value={dataFilter} onChange={e => setDataFilter(e.target.value)} style={{ padding: 8, marginLeft: 8 }}>
                <option value="all">すべて</option><option value="TEST">テスト</option><option value="REAL">実データ</option><option value="UNKNOWN">未分類</option>
              </select></label>
            </div>
            <p>表示 {filteredBets.length}件 ／ 精算済み {settled.length}件 ／ 未精算 {filteredBets.length - settled.length}件</p>
            <div style={{ display: "grid", gridTemplateColumns: "repeat(auto-fit,minmax(160px,1fr))", gap: 12 }}>
              {[
                ["投資額", yen(stake)], ["払戻額", yen(payout)],
                ["収支", yen(payout - stake)], ["回収率", stake ? `${(payout / stake * 100).toFixed(2)}%` : "-"],
                ["的中率", settled.length ? `${(hits / settled.length * 100).toFixed(1)}%` : "-"],
              ].map(([label, value]) => <div key={label} style={{ background: "var(--rl-bg)", borderRadius: 8, padding: 14 }}>
                <div style={{ color: "var(--rl-muted)", fontSize: 13 }}>{label}</div><strong style={{ fontSize: 20 }}>{value}</strong>
              </div>)}
            </div>
            <p style={{ color: "var(--rl-muted)", fontSize: 12 }}>精算済みの買い目のみ金額・的中率の分母に使用。最大500件までの本人の履歴を表示。未分類にはレースIDのない過去データや競艇が含まれます。実データ区分はDBの登録情報に基づく暫定分類で、結果の公式確認を保証しません。</p>
          </section>
          <section style={{ background: "var(--rl-hover)", padding: 20, borderRadius: 12, marginBottom: 24 }}>
            <h2>🔬 AI参照購入の成績</h2>
            <p>AI参照あり {aiReferenced.length}件 ／ 精算済み {aiSettled.length}件 ／ 参照した予測ID {uniqueAi}種類</p>
            <p>精算済みの投資 {yen(aiStake)} ／ 払戻 {yen(aiPayout)} ／ 回収率 {aiStake ? `${(aiPayout / aiStake * 100).toFixed(2)}%` : "-"}</p>
            <p style={{ color: "#fbbf24", fontSize: 13 }}>これはAI参照購入の収支であり、AIモデルの予測精度ではありません。同一馬への複数購入をモデル性能として重複計上しません。モデル別の診断結果は下の独立パネルに表示します。</p>
          </section>
          <section style={{ background: "var(--rl-hover)", padding: 20, borderRadius: 12, marginBottom: 24 }}>
            <h2>🧪 AIモデル別の予測性能診断</h2>
            <p style={{ color: "var(--rl-muted)", fontSize: 13 }}>
              購入回数ではなく、レース・モデル・馬番ごとに1予測として集計します。
              Brierスコアは小さいほど誤差が小さくなりますが、テストデータの数値は実戦性能ではありません。
            </p>
            <label>診断データ区分 <select aria-label="モデル診断フィルター" value={modelFilter}
              onChange={e => setModelFilter(e.target.value)}
              style={{ padding: 8, marginLeft: 8, marginBottom: 12 }}>
              <option value="all">すべて</option><option value="TEST">テスト</option>
              <option value="REAL_CANDIDATE">実データ候補</option><option value="UNKNOWN">不明</option>
            </select></label>
            {modelError && <p role="status" style={{ color: "#fbbf24" }}>{modelError}</p>}
            {!modelError && modelMetrics.filter(m => modelFilter === "all" || m.data_group === modelFilter).length === 0 &&
              <p style={{ color: "var(--rl-muted)" }}>該当するモデル診断データはありません。</p>}
            {!modelError && modelMetrics.filter(m => modelFilter === "all" || m.data_group === modelFilter).map((m, index) => {
              const eligible = m.evaluation_status === "REAL_CANDIDATE_CHECK_SOURCE";
              return <div key={`${m.race_date}-${m.venue}-${m.race_number}-${m.model_version}-${m.prediction_mode}-${index}`}
                style={{ background: "var(--rl-bg)", padding: 14, borderRadius: 8, marginTop: 10 }}>
                <strong style={{ overflowWrap: "anywhere", display: "block" }}>{m.model_version}</strong>
                <p style={{ color: "var(--rl-muted)", fontSize: 13, margin: "6px 0" }}>
                  {m.race_date} {m.venue} {m.race_number}R ／ {m.prediction_mode} ／ {m.data_group}
                </p>
                <p style={{ color: eligible ? "#fbbf24" : "var(--rl-muted)", margin: "6px 0" }}>
                  判定: {metricStatus[m.evaluation_status] ?? m.evaluation_status}
                </p>
                <div style={{ display: "flex", flexWrap: "wrap", gap: 14, fontSize: 14 }}>
                  <span>予測 {m.predicted_horses}頭</span>
                  <span>勝率合計 {m.probability_sum === null ? "-" : `${(Number(m.probability_sum) * 100).toFixed(2)}%`}</span>
                  <span>BUY的中 {m.buy_winners}/{m.buy_horses}</span>
                  <span>Brier {m.brier_score === null ? "-" : Number(m.brier_score).toFixed(6)}</span>
                  <span>勝ち馬の予測勝率 {m.winner_predicted_pct === null ? "-" : `${Number(m.winner_predicted_pct).toFixed(2)}%`}</span>
                </div>
              </div>;
            })}
            <p style={{ color: "#fbbf24", fontSize: 12 }}>
              「実績候補」も公式結果・全頭網羅性・発走前の予測時刻を確認できていないため、確定した実戦性能ではありません。
              複数モデル・異なるレース条件のBrierスコアを単純比較しないでください。
            </p>
          </section>
          {raceError && <p role="status" style={{ color: "#fbbf24" }}>{raceError}</p>}
          <section style={{ background: "var(--rl-hover)", padding: 20, borderRadius: 12, marginBottom: 24 }}>
            <h2>確定済み {settled.length}件</h2>
            <p>投資 {yen(stake)} ／ 払戻 {yen(payout)} ／ 収支 {yen(payout - stake)}</p>
            <p>回収率 {stake ? (payout / stake * 100).toFixed(1) : "-"}% ／ 的中率 {settled.length ? (hits / settled.length * 100).toFixed(1) : "-"}%</p>
            <small style={{ color: "var(--rl-muted)" }}>確定済みの買い目単位で計算。未確定は分母に含めません。</small>
          </section>
          {message && <p role="status" style={{ color: "#fbbf24" }}>{message}</p>}
          {aiError && <p role="status" style={{ color: "#fbbf24" }}>{aiError}</p>}
          {filteredBets.map(b => <section key={b.id} style={{ background: "var(--rl-hover)", padding: 20, borderRadius: 12, marginBottom: 12 }}>
            <strong>{b.sport === "horse" ? "🐎" : "🚤"} {b.race_date} {b.venue} {b.race_number}R</strong>
            <span style={{ marginLeft: 12, fontSize: 12, color: "var(--rl-muted)" }}>[{kindOf(b) === "TEST" ? "テスト" : kindOf(b) === "REAL" ? "実データ（暫定）" : "未分類"}]</span>
            {b.referenced_ai_prediction_id && b.referenced_ai_model_version === FIXED_MODEL_VERSION && <p style={{ fontSize: 13, color: "var(--rl-accent-bright)", overflowWrap: "anywhere" }}>
              AI参照保存済: {b.referenced_ai_model_version ?? "モデル不明"} ／ 勝率 {b.referenced_ai_win_probability === null ? "-" : `${(b.referenced_ai_win_probability * 100).toFixed(2)}%`} ／ 期待回収率 {b.referenced_ai_expected_return === null ? "-" : `${(b.referenced_ai_expected_return * 100).toFixed(2)}%`}
            </p>}
            <p>{b.bet_type} {b.selection} ／ 投資 {yen(b.stake)}{b.odds ? ` ／ 登録オッズ ${b.odds}倍` : ""}</p>
            {b.settled_at !== null ? <>
              <p>{b.is_hit ? "的中" : "不的中"} ／ 払戻 {yen(b.payout ?? 0)} ／ 収支 {yen((b.payout ?? 0) - b.stake)}</p>
              <p style={{ color: "var(--rl-muted)" }}>
                {b.is_hit
                  ? "事後検証：この買い目は的中しました。ただし、1回の的中だけでは予測精度を判断できません。"
                  : "事後検証：この買い目は不的中でした。ただし、1回の不的中だけでは予測が誤っていたとは判断できません。"}
              </p>
            </> : <div style={{ display: "flex", flexWrap: "wrap", alignItems: "center", gap: 10 }}>
              <label>的中時の払戻額（円） <input type="number" min="1" step="1" value={amounts[b.id] ?? ""}
                onChange={e => setAmounts(prev => ({ ...prev, [b.id]: e.target.value }))}
                style={{ width: 120, padding: 8, background: "var(--rl-bg)", color: "white", border: "1px solid var(--rl-faint)", borderRadius: 6 }} /></label>
              <button disabled={busyId !== null} onClick={() => void settle(b, true)} style={{ padding: 10 }}>的中で確定</button>
              <button disabled={busyId !== null} onClick={() => void settle(b, false)} style={{ padding: 10 }}>不的中で確定</button>
            </div>}
            <div style={{ borderTop: "1px solid var(--rl-border)", paddingTop: 12, marginTop: 14 }}>
              <strong style={{ color: "#93c5fd" }}>🔬 AI予測との照合</strong>
              {aiError ? (
                <p style={{ color: "var(--rl-muted)" }}>照合情報を表示できません。結果確定には影響しません。</p>
              ) : !aiByBet[b.id] ? (
                <p style={{ color: "var(--rl-muted)" }}>照合情報がありません。</p>
              ) : aiByBet[b.id].every(r => r.ai_prediction_id === null) ? (
                <p style={{ color: "var(--rl-muted)" }}>この買い目に対応するAI予測はありません。</p>
              ) : <>
                <p style={{ color: "var(--rl-muted)", fontSize: 13 }}>
                  購入登録時刻: {formatJst(aiByBet[b.id][0].prediction_registered_at)}（日本時間）
                </p>
                {aiByBet[b.id].filter(r => r.ai_prediction_id !== null).map(r => (
                  <div key={r.ai_prediction_id!} style={{ background: "var(--rl-bg)", padding: 12, borderRadius: 8, marginTop: 8 }}>
                    <div style={{ overflowWrap: "anywhere" }}><strong>モデル: {r.model_version ?? "不明"}</strong></div>
                    <div>予測勝率: {r.win_probability === null ? "不明" : `${(r.win_probability * 100).toFixed(2)}%`}
                      {r.odds_at_prediction !== null ? ` ／ AI保存オッズ: ${r.odds_at_prediction}倍` : ""}</div>
                    <div>AI生成: {r.ai_created_at ? formatJst(r.ai_created_at) : "不明"}（日本時間）</div>
                    {r.ai_timing_status === "POST_REGISTERED" ? (
                      <p style={{ color: "#fbbf24", marginBottom: 0 }}>購入登録後の予測です。購入判断の根拠・期待回収率には使用しません。</p>
                    ) : r.ai_timing_status === "PRE_REGISTERED" ? (
                      <p style={{ color: "var(--rl-accent-bright)", marginBottom: 0 }}>
                        購入登録以前の予測です。
                        {r.expected_roi_percent !== null ? ` 参考期待回収率: ${Number(r.expected_roi_percent).toFixed(2)}%` : ""}
                        <span style={{ display: "block", color: "var(--rl-muted)", fontSize: 12 }}>登録時刻を基準にした判定です。実際の購入時刻との一致は未確認です。</span>
                      </p>
                    ) : null}
                  </div>
                ))}
                <p style={{ color: "var(--rl-muted)", fontSize: 12 }}>固定モデルの単勝勝率と期待回収率は推定値です。買い目の実績は人間の予想履歴で集計しています。</p>
              </>}
            </div>
          </section>)}
          {!filteredBets.length && <p>この条件に該当する買い目はありません。</p>}
        </>}
        </div>
      </div>
    </main>
  );
}
