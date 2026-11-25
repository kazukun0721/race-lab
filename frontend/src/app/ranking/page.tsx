"use client";

import { useEffect, useMemo, useState } from "react";
import Link from "next/link";
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
type SortKey = "return_rate" | "total_predictions";
const fmt = (n: number) => Number(n).toLocaleString("ja-JP");
const money = (n: number) => `${n > 0 ? "+" : ""}${fmt(n)}円`;
const percent = (n: number | null) => n == null ? "未集計" : `${Number(n).toFixed(2)}%`;
const menu = [
  ["/", "⌂", "ダッシュボード"],
  ["/races/auto", "▤", "レース一覧"],
  ["/races/horse", "◎", "AI予測"],
  ["/review", "▥", "予測レビュー"],
  ["/ranking", "▦", "ランキング"],
  ["/mypage", "◇", "マイページ"],
] as const;

export default function RankingPage() {
  const router = useRouter();
  const [rankings, setRankings] = useState<Ranking[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState("");
  const [sortBy, setSortBy] = useState<SortKey>("return_rate");
  const [myId, setMyId] = useState("");
  const [refresh, setRefresh] = useState(0);

  useEffect(() => {
    let active = true;
    const supabase = createClient();
    async function load() {
      setLoading(true);
      setError("");
      try {
        const { data: { user }, error: authError } = await supabase.auth.getUser();
        if (!active) return;
        if (authError || !user) { router.replace("/login"); return; }
        setMyId(user.id);
        const { data, error: rpcError } = await supabase.rpc("get_ranking");
        if (!active) return;
        if (rpcError) setError(rpcError.message);
        else setRankings((data ?? []) as Ranking[]);
      } catch (e) {
        if (active) setError(e instanceof Error ? e.message : "ランキングを取得できませんでした。");
      } finally {
        if (active) setLoading(false);
      }
    }
    void load();
    return () => { active = false; };
  }, [router, refresh]);

  const sorted = useMemo(() => [...rankings].sort((a, b) => {
    const av = a[sortBy];
    const bv = b[sortBy];
    if (av == null && bv != null) return 1;
    if (bv == null && av != null) return -1;
    const diff = Number(bv ?? 0) - Number(av ?? 0);
    if (diff !== 0) return diff;
    return b.total_predictions - a.total_predictions || a.user_id.localeCompare(b.user_id);
  }), [rankings, sortBy]);
  const me = sorted.findIndex(r => r.user_id === myId);
  const options: { key: SortKey; label: string; detail: string }[] = [
    { key: "return_rate", label: "回収率", detail: "払戻額 ÷ 投資額" },
    { key: "total_predictions", label: "予想数", detail: "集計対象のサンプル数" },
  ];

  return <div className="rank-shell">
    <aside className="rank-side">
      <Link href="/" className="rank-logo">RACE LAB<span>.</span></Link>
      <div className="rank-side-label">WORKSPACE</div>
      <nav aria-label="メインメニュー">{menu.map(([href, symbol, label]) => <Link key={href} href={href} className={`rank-nav ${href === "/ranking" ? "rank-active" : ""}`}><span aria-hidden="true">{symbol}</span>{label}</Link>)}</nav>
      <div className="rank-side-foot">● PRIVATE WORKSPACE</div>
    </aside>
    <div className="rank-body">
      <header className="rank-top"><span>WORKSPACE　/　RANKING</span><Link href="/">OVERVIEW ↗</Link></header>
      <main className="rank-content">
        <div className="rank-eyebrow">● RACE INTELLIGENCE / LEADERBOARD</div>
        <div className="rank-heading"><div><h1>ランキング<span>.</span></h1><p>メンバーの確定済み予想成績を比較します。</p></div><button className="rank-refresh" type="button" disabled={loading} onClick={() => setRefresh(v => v + 1)}>{loading ? "取得中..." : "↻ データ更新"}</button></div>
        <div className="rank-section-title"><b>01　評価基準を選択</b><small>SORT LEADERBOARD</small></div>
        <div className="rank-sort-grid">{options.map(o => <button key={o.key} type="button" aria-pressed={sortBy === o.key} onClick={() => setSortBy(o.key)} className={`rank-sort ${sortBy === o.key ? "selected" : ""}`}><strong>{o.label}</strong><span>{o.detail}</span><i aria-hidden="true">↗</i></button>)}</div>
        <div className="rank-section-title"><b>02　メンバーランキング</b><small>{loading ? "LOADING" : `${sorted.length} MEMBERS`}</small></div>
        <section className="rank-panel">
          {error && <div className="rank-alert" role="alert">取得エラー：{error}</div>}
          {loading ? <div className="rank-empty">ランキングを読み込み中...</div> : !error && sorted.length === 0 ? <div className="rank-empty"><strong>まだ集計済みデータがありません</strong><p>レース結果が確定するとランキングに反映されます。</p></div> : !error && <div className="rank-table-scroll"><table><thead><tr><th>順位</th><th>ユーザー</th><th>予想数</th><th>的中数</th><th>的中率</th><th>回収率</th><th>収支</th></tr></thead><tbody>{sorted.map((r, i) => <tr key={r.user_id} className={r.user_id === myId ? "rank-me" : ""}><td><span className={`rank-place ${i < 3 ? `top-${i + 1}` : ""}`}>{String(i + 1).padStart(2, "0")}</span></td><td><strong>{r.user_id.slice(0, 8)}</strong>{r.user_id === myId && <span className="rank-you">YOU</span>}</td><td className={sortBy === "total_predictions" ? "rank-focus" : ""}>{fmt(r.total_predictions)}</td><td>{fmt(r.hits)}</td><td>{percent(r.hit_rate)}</td><td className={sortBy === "return_rate" ? "rank-focus" : ""}>{percent(r.return_rate)}{r.return_rate != null && r.total_predictions < 10 && <small title="集計対象が10件未満です"> ・少数</small>}</td><td className={r.profit >= 0 ? "rank-positive" : "rank-negative"}>{money(r.profit)}</td></tr>)}</tbody></table></div>}
        </section>
        {!loading && !error && me >= 0 && <div className="rank-me-card"><span>YOUR POSITION</span><strong>{me + 1}<small>位 / {sorted.length}人</small></strong><p>現在の並び順：{options.find(o => o.key === sortBy)?.label}</p></div>}
        <p className="rank-note">※ 順位はSupabaseの get_ranking が返す集計値を使用しています。テストデータの除外や集計対象期間はRPCの定義に依存します。予想数10件未満の回収率には「少数」と表示します。未集計値は最下位に表示します。</p>
      </main>
    </div>
    <style jsx global>{`
      .rank-shell{min-height:100vh;background:#080f1c;color:#f1f6ff;font-family:Arial,"Noto Sans JP",sans-serif;font-size:13px;display:flex}
      .rank-shell *{box-sizing:border-box}.rank-shell a{text-decoration:none;color:inherit}
      .rank-side{width:168px;flex-shrink:0;background:#0d1726;border-right:1px solid #25344a;padding:22px 13px;display:flex;flex-direction:column;min-height:100vh}
      .rank-logo{font-size:14px;font-weight:900;letter-spacing:1.3px;margin:0 4px 42px}.rank-logo span,.rank-content h1 span{color:#31d8ae}
      .rank-side-label{font-size:9px;letter-spacing:1.8px;font-weight:800;color:#6686ab;margin:0 6px 12px}.rank-side nav{display:grid;gap:5px}
      .rank-nav{display:flex;align-items:center;gap:11px;padding:13px 11px;border-radius:7px;font-weight:700;font-size:12px;color:#a3b7d0!important}.rank-nav>span{width:17px;color:#7c9ac0;font-size:16px}.rank-nav:hover{background:#17283b}.rank-active{background:#103c38!important;color:#32e5b7!important}.rank-active>span{color:#32e5b7}
      .rank-side-foot{margin-top:auto;color:#5f83a5;font-size:9px;letter-spacing:1px}.rank-body{flex:1;min-width:0}
      .rank-top{height:44px;border-bottom:1px solid #25344a;display:flex;align-items:center;justify-content:space-between;padding:0 30px;font-size:9px;letter-spacing:1.5px;color:#7395bc;font-weight:800}.rank-top a:hover{color:#32e5b7}
      .rank-content{max-width:1060px;padding:48px 28px 90px;margin:0 auto}.rank-eyebrow{font-size:10px;letter-spacing:1.5px;color:#30e0af;font-weight:900;margin-bottom:14px}
      .rank-heading{display:flex;justify-content:space-between;align-items:center;gap:20px;margin-bottom:45px}.rank-heading h1{font-size:34px;letter-spacing:-1px;margin:0 0 11px;font-weight:900}.rank-heading p{margin:0;color:#85a2c1;line-height:1.7}
      .rank-refresh{border:0;border-radius:7px;background:#32d7ad;color:#042b25;padding:12px 17px;font-weight:800;cursor:pointer;white-space:nowrap}.rank-refresh:disabled{opacity:.6;cursor:wait}
      .rank-section-title{display:flex;justify-content:space-between;align-items:center;margin:24px 0 13px;gap:10px}.rank-section-title b{font-size:13px}.rank-section-title small{font-size:9px;letter-spacing:1.2px;color:#6789ac}
      .rank-sort-grid{display:grid;grid-template-columns:repeat(3,minmax(0,1fr));gap:11px;margin-bottom:31px}.rank-sort{text-align:left;position:relative;background:#111f31;border:1px solid #293c52;border-radius:9px;padding:20px 17px;min-height:89px;color:#e8f2ff;cursor:pointer}.rank-sort strong{display:block;font-size:16px;margin-bottom:9px}.rank-sort span{color:#7696b8;font-size:11px}.rank-sort i{position:absolute;right:15px;top:19px;color:#6487a9;font-style:normal}.rank-sort.selected{border-color:#2ed9ab;background:#102c30}.rank-sort.selected i{color:#2ed9ab}
      .rank-panel{background:#111f31;border:1px solid #293c52;border-radius:9px;overflow:hidden}.rank-table-scroll{overflow-x:auto}.rank-panel table{width:100%;min-width:780px;border-collapse:collapse;text-align:left}.rank-panel th{background:#101b2b;color:#7899bc;font-size:10px;letter-spacing:.6px;padding:17px 15px;border-bottom:1px solid #2b4057;white-space:nowrap}.rank-panel td{padding:18px 15px;border-bottom:1px solid #25384c;white-space:nowrap;font-variant-numeric:tabular-nums}.rank-panel tr:last-child td{border-bottom:0}.rank-panel tbody tr:hover{background:#172a3f}.rank-me{background:#112c34}.rank-place{font-weight:900;color:#7e9cb7}.rank-place.top-1{color:#f2c879}.rank-place.top-2{color:#c4d5e8}.rank-place.top-3{color:#d7a17d}.rank-you{margin-left:8px;background:#153f39;border:1px solid #226d5d;color:#36e0b2;border-radius:4px;padding:3px 5px;font-size:9px}.rank-focus{font-weight:900;color:#e9f8ff}.rank-positive{color:#3be1b4}.rank-negative{color:#ff929b}
      .rank-empty{padding:55px 20px;text-align:center;color:#8ea9c5}.rank-empty strong{display:block;color:#edf5ff;font-size:16px;margin-bottom:10px}.rank-alert{padding:18px;color:#ffb6bb}
      .rank-me-card{margin-top:18px;border:1px solid #26665c;background:#102a30;border-radius:9px;padding:20px 24px;display:flex;align-items:center;gap:20px}.rank-me-card>span{color:#46d6b1;font-size:10px;letter-spacing:1.5px;font-weight:900}.rank-me-card strong{font-size:28px}.rank-me-card small{font-size:12px;color:#a7c2cc;margin-left:7px}.rank-me-card p{margin-left:auto;color:#8fb8b8}.rank-note{font-size:11px;line-height:1.9;color:#7b99b8;margin-top:24px}
      @media(max-width:760px){.rank-side{width:56px;padding:18px 6px}.rank-logo{font-size:10px;overflow:hidden;white-space:nowrap;margin:0 2px 38px;letter-spacing:-.3px}.rank-side-label,.rank-side-foot{display:none}.rank-nav{font-size:0;justify-content:center;padding:13px 0}.rank-nav>span{font-size:19px;width:auto}.rank-top{padding:0 15px}.rank-content{padding:30px 15px 60px}.rank-heading{align-items:flex-start;flex-direction:column;margin-bottom:30px}.rank-heading h1{font-size:28px}.rank-sort-grid{grid-template-columns:1fr;gap:8px}.rank-sort{min-height:68px;padding:13px}.rank-sort strong{margin-bottom:5px}.rank-me-card{flex-wrap:wrap}.rank-me-card p{margin:0;width:100%}}
    `}</style>
  </div>;
}
