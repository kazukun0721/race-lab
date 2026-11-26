"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";
import type { ReactNode } from "react";
import ViewToggle from "./ViewToggle";
import "./race-lab-shell.css";

const items = [
  { href: "/", label: "ダッシュボード", symbol: "⌂" },
  { href: "/races/auto", label: "レース一覧", symbol: "▤" },
  { href: "/history", label: "過去データ", symbol: "▦" },
  { href: "/horses", label: "馬検索", symbol: "◇" },
  { href: "/quiz", label: "馬クイズ", symbol: "？" },
  { href: "/races/horse", label: "AI予測", symbol: "◎" },
  { href: "/review", label: "予測レビュー", symbol: "▥" },
  { href: "/ranking", label: "ランキング", symbol: "▦" },
  { href: "/mypage", label: "マイページ", symbol: "◇" },
];

export default function RaceLabShell({ children }: { children: ReactNode }) {
  const pathname = usePathname();
  const publicPage = pathname === "/login" || pathname === "/setup-password";
  if (publicPage) return <>{children}</>;
  return (
    <div className="rl-shared-shell">
      <aside className="rl-shared-sidebar" aria-label="共通メニュー">
        <Link href="/" className="rl-shared-logo">RACE LAB<span>.</span></Link>
        <div className="rl-shared-caption">WORKSPACE</div>
        <nav className="rl-shared-nav">
          {items.map(item => (
            <Link key={item.href} href={item.href} className={`rl-shared-link ${pathname === item.href ? "is-active" : ""}`} aria-current={pathname === item.href ? "page" : undefined}>
              <span aria-hidden="true" className="rl-shared-icon">{item.symbol}</span>
              <span>{item.label}</span>
            </Link>
          ))}
        </nav>
        <div className="rl-shared-viewtoggle"><ViewToggle /></div>
        <div className="rl-shared-footer">● PRIVATE WORKSPACE</div>
      </aside>
      <div className="rl-shared-body">{children}</div>
    </div>
  );
}

