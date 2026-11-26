"use client";

import { useEffect, useState } from "react";
import Link from "next/link";
import { useRouter } from "next/navigation";
import { createClient } from "@/lib/supabase/client";

const links = [
  { href: "/", label: "繝繝・す繝･繝懊・繝・, icon: "竚・ },
  { href: "/races/auto", label: "繝ｬ繝ｼ繧ｹ荳隕ｧ", icon: "笆､" },
  { href: "/races/horse", label: "AI莠域ｸｬ", icon: "笳・ },
  { href: "/review", label: "莠域ｸｬ繝ｬ繝薙Η繝ｼ", icon: "笆･" },
  { href: "/ranking", label: "繝ｩ繝ｳ繧ｭ繝ｳ繧ｰ", icon: "笆ｦ" },
  { href: "/mypage", label: "繝槭う繝壹・繧ｸ", icon: "笳・ },
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
        setEmail(data.user.email ?? "譛ｪ逋ｻ骭ｲ");
        setUserId(data.user.id);
        const { data: member } = await supabase.from("group_members").select("display_name").eq("user_id", data.user.id).maybeSingle();
        if (!active) return;
        if (member?.display_name) {
          setDisplayName(member.display_name);
          setNameInput(member.display_name);
        }
      } catch {
        if (active) setError("繝ｭ繧ｰ繧､繝ｳ迥ｶ諷九ｒ遒ｺ隱阪〒縺阪∪縺帙ｓ縺ｧ縺励◆縲・);
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
        setError("繝ｭ繧ｰ繧｢繧ｦ繝医↓螟ｱ謨励＠縺ｾ縺励◆縲ゅｂ縺・ｸ蠎ｦ縺願ｩｦ縺励￥縺縺輔＞縲・);
        return;
      }
      router.replace("/login");
      router.refresh();
    } catch {
      setError("繝ｭ繧ｰ繧｢繧ｦ繝医↓螟ｱ謨励＠縺ｾ縺励◆縲る壻ｿ｡迥ｶ諷九ｒ縺皮｢ｺ隱阪￥縺縺輔＞縲・);
    } finally {
      setLoggingOut(false);
    }
  }

  async function handleSaveName() {
    const next = nameInput.trim();
    if (!next || nameSaving) return;
    if (next.length > 30) {
      setNameMessage("陦ｨ遉ｺ蜷阪・30譁・ｭ嶺ｻ･蜀・↓縺励※縺上□縺輔＞縲・);
      return;
    }
    setNameSaving(true);
    setNameMessage("");
    try {
      const supabase = createClient();
      const { error: rpcError } = await supabase.rpc("set_my_display_name", { p_display_name: next });
      if (rpcError) {
        setNameMessage("菫晏ｭ倥↓螟ｱ謨励＠縺ｾ縺励◆縲ゅΓ繝ｳ繝舌・逋ｻ骭ｲ縺梧怏蜉ｹ縺狗｢ｺ隱阪＠縺ｦ縺上□縺輔＞縲・);
        return;
      }
      setDisplayName(next);
      setNameMessage("陦ｨ遉ｺ蜷阪ｒ菫晏ｭ倥＠縺ｾ縺励◆縲ゅΛ繝ｳ繧ｭ繝ｳ繧ｰ縺ｫ繧ょ渚譏縺輔ｌ縺ｾ縺吶・);
    } catch {
      setNameMessage("菫晏ｭ倥↓螟ｱ謨励＠縺ｾ縺励◆縲る壻ｿ｡迥ｶ諷九ｒ縺皮｢ｺ隱阪￥縺縺輔＞縲・);
    } finally {
      setNameSaving(false);
    }
  }

  return (
    <div className="rl470-shell">
      <aside className="rl470-sidebar" aria-label="繝｡繧､繝ｳ繝翫ン繧ｲ繝ｼ繧ｷ繝ｧ繝ｳ">
        <Link href="/" className="rl470-brand">RACE LAB<span>.</span></Link>
        <div className="rl470-sidecaption">WORKSPACE</div>
        <nav className="rl470-nav">
          {links.map(item => (
            <Link key={item.href} href={item.href} aria-current={item.href === "/mypage" ? "page" : undefined} className={`rl470-navitem ${item.href === "/mypage" ? "rl470-active" : ""}`}>
              <span aria-hidden="true">{item.icon}</span>{item.label}
            </Link>
          ))}
        </nav>
        <div className="rl470-sidefooter">笳・PRIVATE WORKSPACE</div>
      </aside>

      <div className="rl470-main">
        <header className="rl470-topbar">
          <span>WORKSPACE&nbsp; / &nbsp;MY ACCOUNT</span>
          <Link href="/">OVERVIEW 竊・/Link>
        </header>
        <main className="rl470-content">
          <div className="rl470-eyebrow">笳・RACE INTELLIGENCE / ACCOUNT</div>
          <h1>繝槭う繝壹・繧ｸ<span>.</span></h1>
          <p className="rl470-intro">繧｢繧ｫ繧ｦ繝ｳ繝域ュ蝣ｱ縺ｨRACE LAB縺ｮ蛟倶ｺｺ繝ｯ繝ｼ繧ｯ繧ｹ繝壹・繧ｹ縲・/p>

          <div className="rl470-sectionhead"><span>01</span> 繧｢繧ｫ繧ｦ繝ｳ繝域ュ蝣ｱ</div>
          <section className="rl470-panel" aria-label="繧｢繧ｫ繧ｦ繝ｳ繝域ュ蝣ｱ">
            {loading ? (
              <div className="rl470-muted" role="status">繝ｭ繧ｰ繧､繝ｳ迥ｶ諷九ｒ遒ｺ隱堺ｸｭ...</div>
            ) : (
              <>
                <div className="rl470-profile">
                  <div className="rl470-avatar" aria-hidden="true">R.</div>
                  <div>
                    <div className="rl470-small">MEMBER ACCOUNT</div>
                    <div className="rl470-profiletitle">{displayName || "RACE LAB 繝｡繝ｳ繝舌・"}</div>
                    <div className="rl470-status"><span aria-hidden="true">笳・/span> 繝ｭ繧ｰ繧､繝ｳ荳ｭ</div>
                  </div>
                </div>
                <div className="rl470-info-grid">
                  <div className="rl470-info"><div className="rl470-small">繝｡繝ｼ繝ｫ繧｢繝峨Ξ繧ｹ</div><div className="rl470-value">{email}</div></div>
                  <div className="rl470-info"><div className="rl470-small">陦ｨ遉ｺ蜷搾ｼ医Λ繝ｳ繧ｭ繝ｳ繧ｰ陦ｨ遉ｺ・・/div><div className="rl470-value">{displayName || "譛ｪ險ｭ螳・}</div></div>
                  <div className="rl470-info"><div className="rl470-small">繝ｦ繝ｼ繧ｶ繝ｼID</div><div className="rl470-value">{userId ? `${userId.slice(0, 8)}窶ｦ` : "譛ｪ蜿門ｾ・}</div></div>
                </div>
                <div className="rl470-nameedit">
                  <label className="rl470-small" htmlFor="display-name-input">陦ｨ遉ｺ蜷阪ｒ螟画峩</label>
                  <div className="rl470-namerow">
                    <input id="display-name-input" className="rl470-nameinput" type="text" value={nameInput} maxLength={30} onChange={e => setNameInput(e.target.value)} placeholder="陦ｨ遉ｺ蜷阪ｒ蜈･蜉・ />
                    <button type="button" className="rl470-namesave" onClick={() => void handleSaveName()} disabled={nameSaving || !nameInput.trim() || nameInput.trim() === displayName}>{nameSaving ? "菫晏ｭ倅ｸｭ..." : "菫晏ｭ倥☆繧・}</button>
                  </div>
                  {nameMessage && <p className="rl470-muted" role="status">{nameMessage}</p>}
                </div>
              </>
            )}
          </section>

          <div className="rl470-sectionhead"><span>02</span> 繝槭う繝ｯ繝ｼ繧ｯ繧ｹ繝壹・繧ｹ</div>
          <div className="rl470-cards">
            <Link href="/predictions" className="rl470-card"><div className="rl470-cardicon">笳・/div><strong>莠域Φ逋ｻ骭ｲ</strong><p>閾ｪ蛻・・雋ｷ縺・岼繧堤匳骭ｲ縺吶ｋ</p><span className="rl470-arrow">竊・/span></Link>
            <Link href="/review" className="rl470-card"><div className="rl470-cardicon">笆･</div><strong>莠域Φ繝ｬ繝薙Η繝ｼ</strong><p>雉ｼ蜈･螻･豁ｴ縺ｨ謌千ｸｾ繧堤｢ｺ隱阪☆繧・/p><span className="rl470-arrow">竊・/span></Link>
            <Link href="/ranking" className="rl470-card"><div className="rl470-cardicon">笆ｦ</div><strong>繝ｩ繝ｳ繧ｭ繝ｳ繧ｰ</strong><p>繝｡繝ｳ繝舌・縺ｨ縺ｮ謌千ｸｾ繧呈ｯ碑ｼ・☆繧・/p><span className="rl470-arrow">竊・/span></Link>
          </div>

          <div className="rl470-sectionhead"><span>03</span> 陦ｨ遉ｺ繝・・繝・/div>
          <section className="rl470-panel" aria-label="陦ｨ遉ｺ繝・・繝・>
            <div className="rl470-theme-options" role="group" aria-label="繝・・繝樣∈謚・>
              <button type="button" className={`rl470-theme-option ${theme === "dark" ? "rl470-theme-active" : ""}`} onClick={() => applyTheme("dark")} aria-pressed={theme === "dark"}>
                <strong>繝繝ｼ繧ｯ</strong>
                <span>鮟貞渕隱ｿ・井ｻ翫∪縺ｧ縺ｮ陦ｨ遉ｺ・・/span>
              </button>
              <button type="button" className={`rl470-theme-option ${theme === "light" ? "rl470-theme-active" : ""}`} onClick={() => applyTheme("light")} aria-pressed={theme === "light"}>
                <strong>繝帙Ρ繧､繝・/strong>
                <span>逋ｽ蝓ｺ隱ｿ・域・繧九＞陦ｨ遉ｺ・・/span>
              </button>
            </div>
            <p className="rl470-muted">蜈ｨ繝壹・繧ｸ蜈ｱ騾壹・險ｭ螳壹〒縺吶ゅ％縺ｮ遶ｯ譛ｫ縺ｮ繝悶Λ繧ｦ繧ｶ縺ｫ菫晏ｭ倥＆繧後∪縺吶・/p>
          </section>

          <div className="rl470-sectionhead"><span>04</span> 繧ｻ繝・す繝ｧ繝ｳ邂｡逅・/div>
          <section className="rl470-panel rl470-session">
            <div><strong>繝ｭ繧ｰ繧｢繧ｦ繝・/strong><p className="rl470-muted">迴ｾ蝨ｨ縺ｮ繧｢繧ｫ繧ｦ繝ｳ繝医°繧峨し繧､繝ｳ繧｢繧ｦ繝医＠縺ｾ縺吶・/p></div>
            <button type="button" onClick={() => void handleLogout()} disabled={loading || loggingOut} className="rl470-logout">{loggingOut ? "蜃ｦ逅・ｸｭ..." : "繝ｭ繧ｰ繧｢繧ｦ繝・竊・}</button>
          </section>
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
        @media(max-width:760px){.rl470-sidebar{width:60px;flex-basis:60px;padding:14px 5px}.rl470-brand{font-size:9px;padding:0 0 22px;text-align:center}.rl470-sidecaption,.rl470-sidefooter{display:none}.rl470-navitem{justify-content:center;padding:12px 0;font-size:0;gap:0}.rl470-navitem>span{font-size:20px;width:auto}.rl470-content{width:calc(100% - 28px);padding-top:26px}.rl470-topbar{padding:0 14px}.rl470-cards{grid-template-columns:1fr}.rl470-card{min-height:115px}.rl470-info-grid{grid-template-columns:1fr}.rl470-session{align-items:flex-start;flex-direction:column}.rl470-content h1{font-size:25px}}
      `}</style>
    </div>
  );
}
