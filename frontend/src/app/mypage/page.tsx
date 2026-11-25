"use client";

import { useEffect, useState } from "react";
import Link from "next/link";
import { useRouter } from "next/navigation";
import { createClient } from "@/lib/supabase/client";

const links = [
  { href: "/", label: "ダッシュボード", icon: "⌂" },
  { href: "/races/auto", label: "レース一覧", icon: "▤" },
  { href: "/races/horse", label: "AI予測", icon: "◎" },
  { href: "/review", label: "予測レビュー", icon: "▥" },
  { href: "/ranking", label: "ランキング", icon: "▦" },
  { href: "/mypage", label: "マイページ", icon: "◇" },
];

export default function MyPage() {
  const router = useRouter();
  const [email, setEmail] = useState("");
  const [userId, setUserId] = useState("");
  const [loading, setLoading] = useState(true);
  const [loggingOut, setLoggingOut] = useState(false);
  const [error, setError] = useState("");

  useEffect(() => {
    let active = true;
    const supabase = createClient();
    async function checkUser() {
      try {
        const { data, error: authError } = await supabase.auth.getUser();
        if (!active) return;
        if (authError || !data.user) {
          router.replace("/login");
          return;
        }
        setEmail(data.user.email ?? "未登録");
        setUserId(data.user.id);
      } catch {
        if (active) setError("ログイン状態を確認できませんでした。");
      } finally {
        if (active) setLoading(false);
      }
    }
    void checkUser();
    return () => { active = false; };
  }, [router]);

  async function handleLogout() {
    if (loggingOut) return;
    setLoggingOut(true);
    setError("");
    try {
      const supabase = createClient();
      const { error: signOutError } = await supabase.auth.signOut();
      if (signOutError) {
        setError("ログアウトに失敗しました。もう一度お試しください。");
        return;
      }
      router.replace("/login");
      router.refresh();
    } catch {
      setError("ログアウトに失敗しました。通信状態をご確認ください。");
    } finally {
      setLoggingOut(false);
    }
  }

  return (
    <div className="rl470-shell">
      <aside className="rl470-sidebar" aria-label="メインナビゲーション">
        <Link href="/" className="rl470-brand">RACE LAB<span>.</span></Link>
        <div className="rl470-sidecaption">WORKSPACE</div>
        <nav className="rl470-nav">
          {links.map(item => (
            <Link key={item.href} href={item.href} aria-current={item.href === "/mypage" ? "page" : undefined} className={`rl470-navitem ${item.href === "/mypage" ? "rl470-active" : ""}`}>
              <span aria-hidden="true">{item.icon}</span>{item.label}
            </Link>
          ))}
        </nav>
        <div className="rl470-sidefooter">● PRIVATE WORKSPACE</div>
      </aside>

      <div className="rl470-main">
        <header className="rl470-topbar">
          <span>WORKSPACE&nbsp; / &nbsp;MY ACCOUNT</span>
          <Link href="/">OVERVIEW ↗</Link>
        </header>
        <main className="rl470-content">
          <div className="rl470-eyebrow">● RACE INTELLIGENCE / ACCOUNT</div>
          <h1>マイページ<span>.</span></h1>
          <p className="rl470-intro">アカウント情報とRACE LABの個人ワークスペース。</p>

          <div className="rl470-sectionhead"><span>01</span> アカウント情報</div>
          <section className="rl470-panel" aria-label="アカウント情報">
            {loading ? (
              <div className="rl470-muted" role="status">ログイン状態を確認中...</div>
            ) : (
              <>
                <div className="rl470-profile">
                  <div className="rl470-avatar" aria-hidden="true">R.</div>
                  <div>
                    <div className="rl470-small">MEMBER ACCOUNT</div>
                    <div className="rl470-profiletitle">RACE LAB メンバー</div>
                    <div className="rl470-status"><span aria-hidden="true">●</span> ログイン中</div>
                  </div>
                </div>
                <div className="rl470-info-grid">
                  <div className="rl470-info"><div className="rl470-small">メールアドレス</div><div className="rl470-value">{email}</div></div>
                  <div className="rl470-info"><div className="rl470-small">ユーザーID</div><div className="rl470-value">{userId ? `${userId.slice(0, 8)}…` : "未取得"}</div></div>
                </div>
              </>
            )}
          </section>

          <div className="rl470-sectionhead"><span>02</span> マイワークスペース</div>
          <div className="rl470-cards">
            <Link href="/predictions" className="rl470-card"><div className="rl470-cardicon">◎</div><strong>予想登録</strong><p>自分の買い目を登録する</p><span className="rl470-arrow">↗</span></Link>
            <Link href="/review" className="rl470-card"><div className="rl470-cardicon">▥</div><strong>予想レビュー</strong><p>購入履歴と成績を確認する</p><span className="rl470-arrow">↗</span></Link>
            <Link href="/ranking" className="rl470-card"><div className="rl470-cardicon">▦</div><strong>ランキング</strong><p>メンバーとの成績を比較する</p><span className="rl470-arrow">↗</span></Link>
          </div>

          <div className="rl470-sectionhead"><span>03</span> セッション管理</div>
          <section className="rl470-panel rl470-session">
            <div><strong>ログアウト</strong><p className="rl470-muted">現在のアカウントからサインアウトします。</p></div>
            <button type="button" onClick={() => void handleLogout()} disabled={loading || loggingOut} className="rl470-logout">{loggingOut ? "処理中..." : "ログアウト ↗"}</button>
          </section>
          {error && <p className="rl470-error" role="alert">{error}</p>}
          <footer className="rl470-footer">RACE LAB / PRIVATE INTELLIGENCE PLATFORM</footer>
        </main>
      </div>
      <style jsx global>{`
        .rl470-shell{min-height:100vh;background:#090f1c;color:#e9f2ff;font-family:Arial,"Noto Sans JP",sans-serif;display:flex}
        .rl470-shell *{box-sizing:border-box}
        .rl470-shell a{text-decoration:none;color:inherit}
        .rl470-sidebar{width:154px;flex:0 0 154px;min-height:100vh;background:#0d1726;border-right:1px solid #24344a;padding:18px 9px;position:sticky;top:0;height:100vh;display:flex;flex-direction:column}
        .rl470-brand{font-size:12px;font-weight:900;letter-spacing:1.2px;padding:2px 5px 30px}.rl470-brand span,.rl470-content h1 span{color:#2bd7ae}
        .rl470-sidecaption,.rl470-small{font-size:10px;letter-spacing:1.1px;color:#7192b6;font-weight:800}
        .rl470-sidecaption{padding:0 6px 13px}.rl470-nav{display:grid;gap:4px}
        .rl470-navitem{display:flex;gap:10px;align-items:center;padding:13px 9px;border-radius:5px;font-size:11px;font-weight:700;color:#a5c1e3!important}
        .rl470-navitem>span{font-size:15px;color:#6b95be;width:16px;text-align:center}.rl470-navitem:hover{background:#14263a}
        .rl470-active{background:#123d38!important;color:#38e9bf!important}.rl470-active>span{color:#38e9bf}
        .rl470-sidefooter{margin-top:auto;color:#6889ab;font-size:8px;letter-spacing:.6px}
        .rl470-main{flex:1;min-width:0}.rl470-topbar{height:40px;border-bottom:1px solid #24344a;display:flex;justify-content:space-between;align-items:center;padding:0 24px;color:#7fa1c6;font-size:9px;font-weight:800;letter-spacing:1.1px}
        .rl470-topbar a:hover{color:#2bd7ae}.rl470-content{width:min(940px,calc(100% - 48px));margin:0 auto;padding:38px 0 50px}
        .rl470-eyebrow{color:#30e7ba;font-size:10px;font-weight:900;letter-spacing:1.1px;margin-bottom:12px}
        .rl470-content h1{font-size:30px;line-height:1.3;letter-spacing:-.8px;margin:0 0 9px;font-weight:900}
        .rl470-intro{font-size:12px;color:#87a5c8;margin:0 0 32px;line-height:1.7}
        .rl470-sectionhead{font-size:13px;font-weight:800;margin:28px 0 12px}.rl470-sectionhead span{color:#27dfb2;font-size:11px;margin-right:8px}
        .rl470-panel,.rl470-card{background:#111e30;border:1px solid #2a3d54;border-radius:9px}
        .rl470-panel{padding:22px}.rl470-profile{display:flex;gap:16px;align-items:center;padding-bottom:22px;border-bottom:1px solid #29394e}
        .rl470-avatar{width:55px;height:55px;display:grid;place-items:center;background:#173c3c;border:1px solid #2ed8ad;border-radius:12px;color:#36e4b9;font-size:24px;font-weight:900}
        .rl470-profiletitle{font-weight:800;font-size:17px;margin:7px 0}.rl470-status{font-size:11px;color:#3ce4b9;font-weight:700}
        .rl470-info-grid{display:grid;grid-template-columns:1fr 1fr;gap:12px;margin-top:18px}
        .rl470-info{background:#0c1625;border:1px solid #25374d;border-radius:7px;padding:17px;min-width:0}.rl470-value{margin-top:9px;font-size:14px;font-weight:700;overflow-wrap:anywhere}
        .rl470-cards{display:grid;grid-template-columns:repeat(3,minmax(0,1fr));gap:12px}
        .rl470-card{position:relative;padding:19px 16px;min-height:143px;transition:border-color .15s,transform .15s}.rl470-card:hover{border-color:#2bd7ae;transform:translateY(-2px)}
        .rl470-cardicon{width:30px;height:30px;border-radius:7px;background:#16363c;color:#31dfb4;display:grid;place-items:center;font-size:19px;margin-bottom:14px}
        .rl470-card strong{font-size:14px}.rl470-card p{font-size:11px;color:#7c9ec3;margin-top:8px;line-height:1.5}.rl470-arrow{position:absolute;right:15px;top:18px;color:#2bd7ae}
        .rl470-session{display:flex;align-items:center;justify-content:space-between;gap:20px}.rl470-session strong{font-size:14px}.rl470-muted{font-size:12px;color:#8ba8c8;line-height:1.6;margin-top:7px}
        .rl470-logout{border:1px solid #93404c;border-radius:7px;background:#3b202c;color:#ffbdc4;padding:12px 18px;font-size:12px;font-weight:800;cursor:pointer;white-space:nowrap}.rl470-logout:hover{background:#512633}.rl470-logout:disabled{opacity:.5;cursor:wait}
        .rl470-error{color:#ffb0bb;margin-top:14px;font-size:13px}.rl470-footer{font-size:10px;letter-spacing:1px;color:#536f8c;margin-top:32px;text-align:center}
        @media(max-width:760px){.rl470-sidebar{width:60px;flex-basis:60px;padding:14px 5px}.rl470-brand{font-size:9px;padding:0 0 22px;text-align:center}.rl470-sidecaption,.rl470-sidefooter{display:none}.rl470-navitem{justify-content:center;padding:12px 0;font-size:0;gap:0}.rl470-navitem>span{font-size:20px;width:auto}.rl470-content{width:calc(100% - 28px);padding-top:26px}.rl470-topbar{padding:0 14px}.rl470-cards{grid-template-columns:1fr}.rl470-card{min-height:115px}.rl470-info-grid{grid-template-columns:1fr}.rl470-session{align-items:flex-start;flex-direction:column}.rl470-content h1{font-size:25px}}
      `}</style>
    </div>
  );
}
