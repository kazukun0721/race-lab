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
  const [theme, setThemeState] = useState<"dark" | "light">("dark");
  const [displayName, setDisplayName] = useState("");
  const [nameInput, setNameInput] = useState("");
  const [nameSaving, setNameSaving] = useState(false);
  const [nameMessage, setNameMessage] = useState("");
  const [pending, setPending] = useState<{ user_id: string; email: string; created_at: string }[] | null>(null);
  const [pendingNames, setPendingNames] = useState<Record<string, string>>({});
  const [approvingId, setApprovingId] = useState("");
  const [adminMessage, setAdminMessage] = useState("");

  useEffect(() => {
    const isLight =
      document.documentElement.dataset.theme === "light" ||
      localStorage.getItem("rh-theme") === "light";
    setThemeState(isLight ? "light" : "dark");
  }, []);

  function applyTheme(next: "dark" | "light") {
    if (next === "light") {
      document.documentElement.dataset.theme = "light";
    } else {
      delete document.documentElement.dataset.theme;
    }
    localStorage.setItem("rh-theme", next);
    setThemeState(next);
  }

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
        const { data: member } = await supabase.from("group_members").select("display_name").eq("user_id", data.user.id).maybeSingle();
        if (!active) return;
        if (member?.display_name) {
          setDisplayName(member.display_name);
          setNameInput(member.display_name);
        }
      } catch {
        if (active) setError("ログイン状態を確認できませんでした。");
      } finally {
        if (active) setLoading(false);
      }
    }
    void checkUser();
    return () => { active = false; };
  }, [router]);

  useEffect(() => {
    let active = true;
    const supabase = createClient();
    async function loadPending() {
      const { data, error: rpcError } = await supabase.rpc("admin_list_pending");
      if (!active) return;
      if (rpcError) { setPending(null); return; }
      setPending((data ?? []) as { user_id: string; email: string; created_at: string }[]);
    }
    void loadPending();
    return () => { active = false; };
  }, []);

  async function handleApprove(u: { user_id: string; email: string }) {
    const name = (pendingNames[u.user_id] ?? "").trim() || u.email.split("@")[0];
    if (name.length > 40) { setAdminMessage("表示名は40文字以内にしてください。"); return; }
    setApprovingId(u.user_id);
    setAdminMessage("");
    try {
      const supabase = createClient();
      const { error: rpcError } = await supabase.rpc("admin_invite_member", { p_user_id: u.user_id, p_display_name: name, p_role: "member" });
      if (rpcError) { setAdminMessage("承認に失敗しました。"); return; }
      setPending(prev => (prev ?? []).filter(x => x.user_id !== u.user_id));
      setAdminMessage(`${name} さんを承認しました。`);
    } catch {
      setAdminMessage("承認に失敗しました。通信状態をご確認ください。");
    } finally {
      setApprovingId("");
    }
  }

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

  async function handleSaveName() {
    const next = nameInput.trim();
    if (!next || nameSaving) return;
    if (next.length > 30) {
      setNameMessage("表示名は30文字以内にしてください。");
      return;
    }
    setNameSaving(true);
    setNameMessage("");
    try {
      const supabase = createClient();
      const { error: rpcError } = await supabase.rpc("set_my_display_name", { p_display_name: next });
      if (rpcError) {
        setNameMessage("保存に失敗しました。メンバー登録が有効か確認してください。");
        return;
      }
      setDisplayName(next);
      setNameMessage("表示名を保存しました。ランキングにも反映されます。");
    } catch {
      setNameMessage("保存に失敗しました。通信状態をご確認ください。");
    } finally {
      setNameSaving(false);
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
                    <div className="rl470-profiletitle">{displayName || "RACE LAB メンバー"}</div>
                    <div className="rl470-status"><span aria-hidden="true">●</span> ログイン中</div>
                  </div>
                </div>
                <div className="rl470-info-grid">
                  <div className="rl470-info"><div className="rl470-small">メールアドレス</div><div className="rl470-value">{email}</div></div>
                  <div className="rl470-info"><div className="rl470-small">表示名（ランキング表示）</div><div className="rl470-value">{displayName || "未設定"}</div></div>
                  <div className="rl470-info"><div className="rl470-small">ユーザーID</div><div className="rl470-value">{userId ? `${userId.slice(0, 8)}…` : "未取得"}</div></div>
                </div>
                <div className="rl470-nameedit">
                  <label className="rl470-small" htmlFor="display-name-input">表示名を変更</label>
                  <div className="rl470-namerow">
                    <input id="display-name-input" className="rl470-nameinput" type="text" value={nameInput} maxLength={30} onChange={e => setNameInput(e.target.value)} placeholder="表示名を入力" />
                    <button type="button" className="rl470-namesave" onClick={() => void handleSaveName()} disabled={nameSaving || !nameInput.trim() || nameInput.trim() === displayName}>{nameSaving ? "保存中..." : "保存する"}</button>
                  </div>
                  {nameMessage && <p className="rl470-muted" role="status">{nameMessage}</p>}
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

          <div className="rl470-sectionhead"><span>03</span> 表示テーマ</div>
          <section className="rl470-panel" aria-label="表示テーマ">
            <div className="rl470-theme-options" role="group" aria-label="テーマ選択">
              <button type="button" className={`rl470-theme-option ${theme === "dark" ? "rl470-theme-active" : ""}`} onClick={() => applyTheme("dark")} aria-pressed={theme === "dark"}>
                <strong>ダーク</strong>
                <span>黒基調（今までの表示）</span>
              </button>
              <button type="button" className={`rl470-theme-option ${theme === "light" ? "rl470-theme-active" : ""}`} onClick={() => applyTheme("light")} aria-pressed={theme === "light"}>
                <strong>ホワイト</strong>
                <span>白基調（明るい表示）</span>
              </button>
            </div>
            <p className="rl470-muted">全ページ共通の設定です。この端末のブラウザに保存されます。</p>
          </section>

          <div className="rl470-sectionhead"><span>04</span> セッション管理</div>
          <section className="rl470-panel rl470-session">
            <div><strong>ログアウト</strong><p className="rl470-muted">現在のアカウントからサインアウトします。</p></div>
            <button type="button" onClick={() => void handleLogout()} disabled={loading || loggingOut} className="rl470-logout">{loggingOut ? "処理中..." : "ログアウト ↗"}</button>
          </section>
          {pending !== null && (
            <>
              <div className="rl470-sectionhead"><span>05</span> メンバー管理</div>
              <section className="rl470-panel" aria-label="メンバー管理">
                {pending.length === 0 ? (
                  <p className="rl470-muted">承認待ちの登録はありません。</p>
                ) : pending.map(u => (
                  <div key={u.user_id} className="rl470-pendingrow">
                    <div className="rl470-pendinginfo">
                      <div className="rl470-value">{u.email}</div>
                      <div className="rl470-muted">登録：{new Date(u.created_at).toLocaleString("ja-JP", { timeZone: "Asia/Tokyo" })}</div>
                    </div>
                    <input className="rl470-nameinput" type="text" maxLength={40} placeholder="表示名" value={pendingNames[u.user_id] ?? ""} onChange={e => setPendingNames(prev => ({ ...prev, [u.user_id]: e.target.value }))} aria-label={`${u.email} の表示名`} />
                    <button type="button" className="rl470-namesave" disabled={approvingId === u.user_id} onClick={() => void handleApprove(u)}>{approvingId === u.user_id ? "承認中..." : "承認する"}</button>
                  </div>
                ))}
                {adminMessage && <p className="rl470-muted" role="status">{adminMessage}</p>}
                <p className="rl470-muted">表示名を空欄にすると、メールアドレスの @ より前が表示名になります。承認した人はログインすれば全データが見られます。</p>
              </section>
            </>
          )}
          {error && <p className="rl470-error" role="alert">{error}</p>}
          <footer className="rl470-footer">RACE LAB / PRIVATE INTELLIGENCE PLATFORM</footer>
        </main>
      </div>
      <style jsx global>{`
        .rl470-shell{min-height:100vh;background:var(--rl-bg);color:var(--rl-text);font-family:Arial,"Noto Sans JP",sans-serif;display:flex}
        .rl470-shell *{box-sizing:border-box}
        .rl470-shell a{text-decoration:none;color:inherit}
        .rl470-sidebar{width:154px;flex:0 0 154px;min-height:100vh;background:var(--rl-panel);border-right:1px solid var(--rl-border);padding:18px 9px;position:sticky;top:0;height:100vh;display:flex;flex-direction:column}
        .rl470-brand{font-size:12px;font-weight:900;letter-spacing:1.2px;padding:2px 5px 30px}.rl470-brand span,.rl470-content h1 span{color:var(--rl-accent-bright)}
        .rl470-sidecaption,.rl470-small{font-size:10px;letter-spacing:1.1px;color:var(--rl-muted);font-weight:800}
        .rl470-sidecaption{padding:0 6px 13px}.rl470-nav{display:grid;gap:4px}
        .rl470-navitem{display:flex;gap:10px;align-items:center;padding:13px 9px;border-radius:5px;font-size:11px;font-weight:700;color:var(--rl-sub)!important}
        .rl470-navitem>span{font-size:15px;color:var(--rl-muted);width:16px;text-align:center}.rl470-navitem:hover{background:var(--rl-hover)}
        .rl470-active{background:var(--rl-accent-bg)!important;color:var(--rl-accent-bright)!important}.rl470-active>span{color:var(--rl-accent-bright)}
        .rl470-sidefooter{margin-top:auto;color:var(--rl-muted);font-size:8px;letter-spacing:.6px}
        .rl470-main{flex:1;min-width:0}.rl470-topbar{height:40px;border-bottom:1px solid var(--rl-border);display:flex;justify-content:space-between;align-items:center;padding:0 24px;color:var(--rl-muted);font-size:9px;font-weight:800;letter-spacing:1.1px}
        .rl470-topbar a:hover{color:var(--rl-accent-bright)}.rl470-content{width:min(940px,calc(100% - 48px));margin:0 auto;padding:38px 0 50px}
        .rl470-eyebrow{color:var(--rl-accent-bright);font-size:10px;font-weight:900;letter-spacing:1.1px;margin-bottom:12px}
        .rl470-content h1{font-size:30px;line-height:1.3;letter-spacing:-.8px;margin:0 0 9px;font-weight:900}
        .rl470-intro{font-size:12px;color:var(--rl-muted);margin:0 0 32px;line-height:1.7}
        .rl470-sectionhead{font-size:13px;font-weight:800;margin:28px 0 12px}.rl470-sectionhead span{color:var(--rl-accent-bright);font-size:11px;margin-right:8px}
        .rl470-panel,.rl470-card{background:var(--rl-panel);border:1px solid var(--rl-border);border-radius:9px}
        .rl470-panel{padding:22px}.rl470-profile{display:flex;gap:16px;align-items:center;padding-bottom:22px;border-bottom:1px solid var(--rl-border)}
        .rl470-avatar{width:55px;height:55px;display:grid;place-items:center;background:var(--rl-accent-bg);border:1px solid var(--rl-accent-bright);border-radius:12px;color:var(--rl-accent-bright);font-size:24px;font-weight:900}
        .rl470-profiletitle{font-weight:800;font-size:17px;margin:7px 0}.rl470-status{font-size:11px;color:var(--rl-accent-bright);font-weight:700}
        .rl470-info-grid{display:grid;grid-template-columns:1fr 1fr;gap:12px;margin-top:18px}
        .rl470-info{background:var(--rl-panel);border:1px solid var(--rl-border);border-radius:7px;padding:17px;min-width:0}.rl470-value{margin-top:9px;font-size:14px;font-weight:700;overflow-wrap:anywhere}
        .rl470-cards{display:grid;grid-template-columns:repeat(3,minmax(0,1fr));gap:12px}
        .rl470-card{position:relative;padding:19px 16px;min-height:143px;transition:border-color .15s,transform .15s}.rl470-card:hover{border-color:var(--rl-accent-bright);transform:translateY(-2px)}
        .rl470-cardicon{width:30px;height:30px;border-radius:7px;background:var(--rl-hover);color:var(--rl-accent-bright);display:grid;place-items:center;font-size:19px;margin-bottom:14px}
        .rl470-card strong{font-size:14px}.rl470-card p{font-size:11px;color:var(--rl-muted);margin-top:8px;line-height:1.5}.rl470-arrow{position:absolute;right:15px;top:18px;color:var(--rl-accent-bright)}
        .rl470-theme-options{display:grid;grid-template-columns:1fr 1fr;gap:12px}
        .rl470-theme-option{text-align:left;background:var(--rl-bg);border:1px solid var(--rl-border);border-radius:9px;padding:16px;cursor:pointer;color:inherit}
        .rl470-theme-option strong{display:block;font-size:15px;margin-bottom:6px}
        .rl470-theme-option span{font-size:11px;color:var(--rl-muted)}
        .rl470-theme-active{border-color:var(--rl-accent);box-shadow:0 0 0 1px var(--rl-accent)}
        .rl470-session{display:flex;align-items:center;justify-content:space-between;gap:20px}.rl470-session strong{font-size:14px}.rl470-muted{font-size:12px;color:var(--rl-muted);line-height:1.6;margin-top:7px}
        .rl470-logout{border:1px solid var(--rl-danger-border);border-radius:7px;background:var(--rl-hover);color:var(--rl-danger-text);padding:12px 18px;font-size:12px;font-weight:800;cursor:pointer;white-space:nowrap}.rl470-logout:hover{background:var(--rl-danger-bg)}.rl470-logout:disabled{opacity:.5;cursor:wait}
        .rl470-error{color:var(--rl-danger-text);margin-top:14px;font-size:13px}.rl470-footer{font-size:10px;letter-spacing:1px;color:var(--rl-faint);margin-top:32px;text-align:center}
        .rl470-nameedit{margin-top:18px;border-top:1px solid var(--rl-border);padding-top:18px}
        .rl470-namerow{display:flex;gap:10px;margin-top:10px}
        .rl470-nameinput{flex:1;min-width:0;background:var(--rl-bg);border:1px solid var(--rl-border);border-radius:7px;color:var(--rl-text);padding:12px;font-size:14px}
        .rl470-namesave{border:1px solid var(--rl-accent);border-radius:7px;background:var(--rl-accent-bg);color:var(--rl-accent-bright);padding:12px 18px;font-size:12px;font-weight:800;cursor:pointer;white-space:nowrap}
        .rl470-namesave:disabled{opacity:.5;cursor:default}
        .rl470-pendingrow{display:flex;gap:10px;align-items:center;padding:12px 0;border-bottom:1px solid var(--rl-border);flex-wrap:wrap}
        .rl470-pendinginfo{flex:1;min-width:200px}
        .rl470-pendingrow .rl470-nameinput{flex:0 1 180px}
        @media(max-width:760px){.rl470-sidebar{width:60px;flex-basis:60px;padding:14px 5px}.rl470-brand{font-size:9px;padding:0 0 22px;text-align:center}.rl470-sidecaption,.rl470-sidefooter{display:none}.rl470-navitem{justify-content:center;padding:12px 0;font-size:0;gap:0}.rl470-navitem>span{font-size:20px;width:auto}.rl470-content{width:calc(100% - 28px);padding-top:26px}.rl470-topbar{padding:0 14px}.rl470-cards{grid-template-columns:1fr}.rl470-card{min-height:115px}.rl470-info-grid{grid-template-columns:1fr}.rl470-session{align-items:flex-start;flex-direction:column}.rl470-content h1{font-size:25px}}
      `}</style>
    </div>
  );
}
