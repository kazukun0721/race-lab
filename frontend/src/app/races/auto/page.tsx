"use client";

import { useCallback, useEffect, useMemo, useState } from "react";
import Link from "next/link";

type Horse = { number: number | null; name: string };
type Race = { race_id: string; sport: string; date: string; venue: string; race_number: number; horses: Horse[] };
type ApiResponse = { success: boolean; races?: Race[]; error?: string };

const venueOrder = ["東京", "中山", "京都", "阪神", "中京", "新潟", "福島", "小倉", "札幌", "函館"];
const panel: React.CSSProperties = { background: "var(--rl-panel)", border: "1px solid var(--rl-border)", borderRadius: 14 };
const muted = "var(--rl-muted)";
const green = "var(--rl-accent-bright)";
const nav = [
  ["⌂", "ダッシュボード", "/"],
  ["▤", "レース一覧", "/races/auto"],
  ["◎", "AI予測", "/races/horse"],
  ["▥", "予測レビュー", "/review"],
  ["▣", "ランキング", "/ranking"],
  ["◇", "マイページ", "/mypage"],
] as const;

export default function AutoRacesPage() {
  const [races, setRaces] = useState<Race[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState("");
  const [date, setDate] = useState("");
  const [venue, setVenue] = useState("");
  const [raceNumber, setRaceNumber] = useState<number | null>(null);

  const loadRaces = useCallback(async () => {
    setLoading(true);
    setError("");
    try {
      const response = await fetch("/api/races", { cache: "no-store" });
      if (response.status === 401) throw new Error("ログインが必要です。ログイン後に再度お試しください。");
      if (!response.ok) throw new Error(`API取得エラー (${response.status})`);
      const data = (await response.json()) as ApiResponse;
      if (!data.success || !Array.isArray(data.races)) throw new Error(data.error ?? "レースデータが不正です。");
      setRaces(data.races);
    } catch (e) {
      setError(e instanceof Error ? e.message : "レースデータを取得できませんでした。");
    } finally {
      setLoading(false);
    }
  }, []);

  useEffect(() => { void loadRaces(); }, [loadRaces]);

  const dates = useMemo(() => [...new Set(races.map(r => r.date))].sort(), [races]);
  const selectedDate = dates.includes(date) ? date : (dates[0] ?? "");
  const venues = useMemo(() => [...new Set(races.filter(r => r.date === selectedDate).map(r => r.venue))]
    .sort((a, b) => (venueOrder.indexOf(a) < 0 ? 99 : venueOrder.indexOf(a)) - (venueOrder.indexOf(b) < 0 ? 99 : venueOrder.indexOf(b))), [races, selectedDate]);
  const selectedVenue = venues.includes(venue) ? venue : (venues[0] ?? "");
  const availableRaces = useMemo(() => races.filter(r => r.date === selectedDate && r.venue === selectedVenue)
    .sort((a, b) => a.race_number - b.race_number), [races, selectedDate, selectedVenue]);
  const selectedRace = availableRaces.find(r => r.race_number === raceNumber) ?? availableRaces[0] ?? null;
  const horses = useMemo(() => [...(selectedRace?.horses ?? [])].sort((a, b) => (a.number ?? 999) - (b.number ?? 999)), [selectedRace]);
  const btn: React.CSSProperties = { padding: "11px 15px", borderRadius: 9, border: "1px solid var(--rl-border)", background: "var(--rl-hover)", color: "var(--rl-text)", cursor: "pointer", fontWeight: 700 };

  return (
    <main className="rl466-root">
      <style>{`
        .rl466-root{min-height:100vh;background:var(--rl-bg);color:var(--rl-text);font-family:Arial,"Noto Sans JP",sans-serif}
        .rl466-shell{display:flex;min-height:100vh}
        .rl466-sidebar{width:220px;flex-shrink:0;background:var(--rl-panel);border-right:1px solid var(--rl-hover);padding:24px 13px}
        .rl466-brand{font-weight:900;letter-spacing:2px;font-size:15px;padding:0 10px 28px}
        .rl466-nav{display:flex;flex-direction:column;gap:6px}
        .rl466-nav a{display:flex;align-items:center;gap:12px;padding:13px 12px;border-radius:9px;color:var(--rl-sub);text-decoration:none;font-size:13px;font-weight:700}
        .rl466-nav a.active{background:var(--rl-accent-bg);color:var(--rl-accent-bright);border-left:2px solid var(--rl-accent-bright)}
        .rl466-content{flex:1;min-width:0}
        .rl466-top{height:58px;border-bottom:1px solid var(--rl-hover);display:flex;align-items:center;justify-content:space-between;padding:0 34px;font-size:11px;color:var(--rl-muted);letter-spacing:1.5px}
        .rl466-main{max-width:1200px;margin:0 auto;padding:38px 34px 90px}
        .rl466-eyebrow{font-size:11px;letter-spacing:2px;color:var(--rl-accent-bright);font-weight:800}
        .rl466-heading{font-size:34px;letter-spacing:-1px;margin:13px 0 10px;font-weight:900}
        .rl466-desc{font-size:13px;color:var(--rl-muted);line-height:1.8}
        .rl466-sectiontitle{font-size:15px;font-weight:800;margin-bottom:16px}
        .rl466-filters{display:grid;grid-template-columns:200px 1fr;gap:20px;padding:23px}
        .rl466-label{display:block;font-size:11px;font-weight:800;color:var(--rl-sub);letter-spacing:1px;margin-bottom:12px}
        .rl466-select{width:100%;padding:12px;border:1px solid var(--rl-border);border-radius:9px;background:var(--rl-panel);color:var(--rl-text);font-size:14px}
        .rl466-venue{display:flex;flex-wrap:wrap;gap:8px}
        .rl466-races{display:grid;grid-template-columns:repeat(12,minmax(0,1fr));gap:8px}
        .rl466-tablehead,.rl466-horserow{display:grid;grid-template-columns:90px minmax(0,1fr) 130px;align-items:center;gap:12px}
        .rl466-tablehead{color:var(--rl-muted);font-size:11px;letter-spacing:1px;padding:13px 18px;border-bottom:1px solid var(--rl-border)}
        .rl466-horserow{padding:15px 18px;border-bottom:1px solid var(--rl-hover);font-size:14px}
        .rl466-horserow:last-child{border-bottom:0}
        .rl466-horserow:nth-child(even){background:var(--rl-hover)}
        .rl466-action{display:inline-flex;align-items:center;justify-content:center;background:var(--rl-accent-bright);color:var(--rl-on-accent);padding:12px 18px;border-radius:9px;text-decoration:none;font-size:13px;font-weight:800}
        @media(max-width:900px){.rl466-sidebar{width:68px;padding:20px 8px}.rl466-brand{font-size:12px;padding:0 4px 24px}.rl466-brand span{display:none}.rl466-nav a{justify-content:center;font-size:20px}.rl466-nav a span{display:none}.rl466-main{padding:30px 18px 60px}.rl466-top{padding:0 18px}.rl466-races{grid-template-columns:repeat(6,minmax(0,1fr))}}
        @media(max-width:600px){.rl466-sidebar{display:none}.rl466-filters{grid-template-columns:1fr}.rl466-races{grid-template-columns:repeat(4,minmax(0,1fr))}.rl466-heading{font-size:28px}.rl466-tablehead,.rl466-horserow{grid-template-columns:65px minmax(0,1fr) 65px;gap:6px}.rl466-tablehead,.rl466-horserow{padding-left:10px;padding-right:10px}.rl466-top{height:50px}}
      `}</style>
      <div className="rl466-shell">
        <aside className="rl466-sidebar">
          <div className="rl466-brand" style={{color:green}}>R<span>ACE LAB</span>.</div>
          <nav className="rl466-nav" aria-label="メインメニュー">
            {nav.map(([icon,label,href]) => <Link key={href} href={href} className={href === "/races/auto" ? "active" : ""}><b aria-hidden="true">{icon}</b><span>{label}</span></Link>)}
          </nav>
        </aside>
        <div className="rl466-content">
          <div className="rl466-top"><span>WORKSPACE　/　RACE DIRECTORY</span><Link href="/" style={{color:muted}}>OVERVIEW ↗</Link></div>
          <div className="rl466-main">
            <div className="rl466-eyebrow">● RACE INTELLIGENCE / DIRECTORY</div>
            <h1 className="rl466-heading">レース一覧<span style={{color:green}}>.</span></h1>
            <p className="rl466-desc">開催日・競馬場・レースを選択して、登録済みの出馬表を確認できます。</p>
            <section style={{marginTop:34,marginBottom:24}}>
              <div style={{display:"flex",alignItems:"center",justifyContent:"space-between",gap:12,marginBottom:16,flexWrap:"wrap"}}>
                <div><span className="rl466-sectiontitle">01　データ取得状況</span><div style={{fontSize:12,color:muted,marginTop:6}}>{loading ? "取得中..." : `登録済み ${races.length} レース`}</div></div>
                <button type="button" onClick={() => void loadRaces()} disabled={loading} style={{...btn,background:green,color:"var(--rl-on-accent)",borderColor:green,opacity:loading?.65:1}}>{loading ? "取得中..." : "↻ データ更新"}</button>
              </div>
              {error && <div role="alert" style={{...panel,padding:18,borderColor:"var(--rl-danger-border)",color:"var(--rl-danger-text)"}}>{error}　<Link href="/login" style={{color:green}}>ログイン画面へ ↗</Link></div>}
              {!loading && !error && dates.length === 0 && <div style={{...panel,padding:24,color:muted}}>取得できる開催レースはまだありません。データ登録後に更新してください。</div>}
            </section>
            {dates.length > 0 && <>
              <section style={{marginBottom:24}}>
                <h2 className="rl466-sectiontitle">02　開催条件を選択</h2>
                <div style={panel} className="rl466-filters">
                  <div><label className="rl466-label" htmlFor="rl466-date">開催日</label><select className="rl466-select" id="rl466-date" value={selectedDate} onChange={e=>{setDate(e.target.value);setVenue("");setRaceNumber(null);}}>{dates.map(d=><option key={d} value={d}>{d}</option>)}</select></div>
                  <div><div className="rl466-label">競馬場</div><div className="rl466-venue">{venues.map(v=><button type="button" key={v} aria-pressed={selectedVenue===v} onClick={()=>{setVenue(v);setRaceNumber(null);}} style={{...btn,background:selectedVenue===v?"var(--rl-accent-bg)":"var(--rl-hover)",borderColor:selectedVenue===v?green:"var(--rl-border)",color:selectedVenue===v?green:"var(--rl-text)"}}>{v}</button>)}</div></div>
                </div>
              </section>
              <section style={{marginBottom:24}}><h2 className="rl466-sectiontitle">03　レース選択</h2><div style={{...panel,padding:18}}><div className="rl466-races">{availableRaces.map(r=><button type="button" key={r.race_id} aria-pressed={selectedRace?.race_id===r.race_id} onClick={()=>setRaceNumber(r.race_number)} style={{...btn,padding:"14px 4px",background:selectedRace?.race_id===r.race_id?green:"var(--rl-hover)",borderColor:selectedRace?.race_id===r.race_id?green:"var(--rl-border)",color:selectedRace?.race_id===r.race_id?"var(--rl-on-accent)":"var(--rl-text)"}}>{r.race_number}R</button>)}</div></div></section>
            </>}
            {selectedRace && <section>
              <div style={{display:"flex",justifyContent:"space-between",alignItems:"center",gap:12,flexWrap:"wrap",marginBottom:16}}><h2 className="rl466-sectiontitle" style={{margin:0}}>04　出馬表 / {selectedRace.venue} {selectedRace.race_number}R</h2><span style={{color:muted,fontSize:12}}>{selectedRace.date}　|　登録 {horses.length}頭</span></div>
              <div style={panel}>
                {horses.some(h=>h.number==null)&&<div style={{padding:"14px 18px",color:"#f6ca76",fontSize:12,borderBottom:"1px solid var(--rl-border)"}}>馬番が未確定の馬は「未定」と表示しています。</div>}
                <div className="rl466-tablehead"><span>馬番</span><span>馬名</span><span>AI予測</span></div>
                {horses.length===0?<div style={{padding:22,color:muted}}>出走馬データは未登録です。</div>:horses.map((h,i)=><div className="rl466-horserow" key={`${selectedRace.race_id}-${i}`}><span style={{fontWeight:800,color:green}}>{h.number==null?"未定":`${h.number}番`}</span><span style={{fontWeight:700,overflowWrap:"anywhere"}}>{h.name}</span><Link href={`/races/horse?date=${selectedRace.date}&venue=${encodeURIComponent(selectedRace.venue)}&race=${selectedRace.race_number}`} style={{fontSize:12,color:green}}>このレースで確認 ↗</Link></div>)}
              </div>
              <div style={{marginTop:20,display:"flex",justifyContent:"flex-end"}}><Link className="rl466-action" href={`/races/horse?date=${selectedRace.date}&venue=${encodeURIComponent(selectedRace.venue)}&race=${selectedRace.race_number}`}>AI予測・出馬表へ　↗</Link></div>
            </section>}
            <div style={{marginTop:42,fontSize:11,color:"var(--rl-faint)"}}>RACE LAB / PRIVATE INTELLIGENCE PLATFORM</div>
          </div>
        </div>
      </div>
    </main>
  );
}
