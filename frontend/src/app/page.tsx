"use client";

import { useState } from "react";
import Link from "next/link";

type Sport = "horse" | "boat";

const sections = [
  { href: "/races/auto", title: "レース一覧", description: "開催情報・出走表を確認", icon: "◫", tag: "RACES" },
  { href: "/predictions", title: "AI予測", description: "予測確率と推奨馬を確認", icon: "◎", tag: "PREDICT" },
  { href: "/review", title: "予測レビュー", description: "結果と予測の差を分析", icon: "▥", tag: "REVIEW" },
  { href: "/ranking", title: "ランキング", description: "メンバー別の成績を比較", icon: "▤", tag: "RANKING" },
  { href: "/mypage", title: "マイページ", description: "自分の予測履歴と成績", icon: "◇", tag: "ACCOUNT" },
  { href: "/login", title: "ログイン", description: "アカウントへアクセス", icon: "↗", tag: "LOGIN" },
];

export default function Home() {
  const [sport, setSport] = useState<Sport>("horse");
  const isHorse = sport === "horse";

  return (
    <main className={`rl-shell ${isHorse ? "rl-horse" : "rl-boat"}`}>
      <div className="rl-layout">
        <aside className="rl-sidebar" aria-label="メインナビゲーション">
          <Link className="rl-brand" href="/" aria-label="RACE LAB ホーム">
            <span className="rl-brand-mark">R<span>.</span></span>
            <span><strong>RACE LAB</strong><small>INTELLIGENCE PLATFORM</small></span>
          </Link>
          <div className="rl-side-label">WORKSPACE</div>
          <nav className="rl-nav">
            <Link href="/" className="rl-nav-link active"><span>▦</span> ダッシュボード</Link>
            <Link href="/races/auto" className="rl-nav-link"><span>◫</span> レース一覧</Link>
            <Link href="/predictions" className="rl-nav-link"><span>◎</span> AI予測</Link>
            <Link href="/review" className="rl-nav-link"><span>▥</span> 予測レビュー</Link>
            <Link href="/ranking" className="rl-nav-link"><span>▤</span> ランキング</Link>
            <Link href="/mypage" className="rl-nav-link"><span>◇</span> マイページ</Link>
          </nav>
          <div className="rl-side-bottom"><span className="rl-status-dot"/> PRIVATE WORKSPACE <small>RACE LAB / v0.1</small></div>
        </aside>

        <div className="rl-main">
          <header className="rl-topbar">
            <div className="rl-breadcrumb">WORKSPACE <span>/</span> OVERVIEW</div>
            <Link className="rl-top-login" href="/login">アカウント <span>↗</span></Link>
          </header>

          <div className="rl-content">
            <div className="rl-eyebrow"><span className="rl-status-dot"/> RACE INTELLIGENCE / OVERVIEW</div>
            <div className="rl-hero">
              <div>
                <h1>Race Intelligence<span className="rl-period">.</span></h1>
                <p>データで予測し、結果から学ぶ。<br className="rl-mobile-break"/> RACE LABの分析ワークスペース。</p>
              </div>
              <div className="rl-hero-emblem" aria-hidden="true">R<span>.</span></div>
            </div>

            <div className="rl-section-heading"><div><span className="rl-index">01</span><h2>分析対象</h2></div><span>SELECT CATEGORY</span></div>
            <div className="rl-sport-switch" role="group" aria-label="競技選択">
              <button type="button" className={isHorse ? "selected" : ""} onClick={() => setSport("horse")} aria-pressed={isHorse}><span className="rl-sport-icon">♞</span><span><strong>中央競馬</strong><small>JRA / HORSE RACING</small></span><span className="rl-sport-arrow">↗</span></button>
              <button type="button" className={!isHorse ? "selected" : ""} onClick={() => setSport("boat")} aria-pressed={!isHorse}><span className="rl-sport-icon">◈</span><span><strong>ボートレース</strong><small>BOAT RACING</small></span><span className="rl-sport-arrow">↗</span></button>
            </div>

            <div className="rl-section-heading rl-stats-heading"><div><span className="rl-index">02</span><h2>{isHorse ? "中央競馬" : "ボートレース"}のサマリー</h2></div><span>PERFORMANCE SNAPSHOT</span></div>
            <section className="rl-stat-grid" aria-label="予測成績サマリー">
              {[
                ["的中率", "HIT RATE", "%"],
                ["回収率", "RETURN RATE", "%"],
                ["累計収支", "TOTAL PROFIT", "円"],
                ["予測レース数", "PREDICTED RACES", "R"],
              ].map(([label, sub, unit]) => (
                <div className="rl-stat-card" key={sub}>
                  <div className="rl-stat-top"><span>{sub}</span><span className="rl-stat-symbol">↗</span></div>
                  <div className="rl-stat-value">--<small>{unit}</small></div>
                  <div className="rl-stat-bottom">{label}<span>データ未接続</span></div>
                </div>
              ))}
            </section>

            <div className="rl-section-heading"><div><span className="rl-index">03</span><h2>ワークスペース</h2></div><span>QUICK ACCESS</span></div>
            <section className="rl-feature-grid" aria-label="機能へのリンク">
              {sections.map((item) => (
                <Link className="rl-feature-card" key={item.href} href={item.href}>
                  <div className="rl-feature-top"><span className="rl-feature-icon">{item.icon}</span><span className="rl-feature-tag">{item.tag}</span></div>
                  <div><h3>{item.title} <span>↗</span></h3><p>{item.description}</p></div>
                </Link>
              ))}
            </section>

            <section className="rl-notice" aria-label="データ接続状況">
              <div className="rl-notice-icon">◎</div>
              <div><strong>予測データの接続準備中</strong><p>この画面はUIプレビューです。モデルの予測結果・オッズ・収支は、データ接続後に表示します。</p></div>
              <span className="rl-notice-tag">UI PREVIEW</span>
            </section>
            <footer className="rl-footer"><span>© RACE LAB</span><span>PRIVATE AI PREDICTION SYSTEM</span></footer>
          </div>
        </div>
      </div>
    </main>
  );
}
