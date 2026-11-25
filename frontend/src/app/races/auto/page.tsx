"use client";

import { useCallback, useEffect, useMemo, useState } from "react";
import Link from "next/link";

type Horse = { number: number | null; name: string };
type Race = { race_id: string; sport: string; date: string; venue: string; race_number: number; horses: Horse[] };
type ApiResponse = { success: boolean; races?: Race[]; error?: string };

const venueOrder = ["東京", "中山", "京都", "阪神", "中京", "新潟", "福島", "小倉", "札幌", "函館"];
const panel: React.CSSProperties = { background: "#111d2e", border: "1px solid #26374a", borderRadius: 14 };
const muted = "#8ea5bc";
const green = "#35dfad";
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
  const btn: React.CSSProperties = { padding: "11px 15px", borderRadius: 9, border: "1px solid #304459", background: "#19283b", color: "#dce8f5", cursor: "pointer", fontWeight: 700 };

  return (
    <main className="rl466-root">
      <style>{`
        .rl466-root{min-height:100vh;background:#09111e;color:#e9f3fb;font-family:Arial,"Noto Sans JP",sans-serif}
        .rl466-shell{display:flex;min-height:100vh}
        .rl466-sidebar{width:220px;flex-shrink:0;background:#0d1725;border-right:1px solid #233448;padding:24px 13px}
        .rl466-brand{font-weight:900;letter-spacing:2px;font-size:15px;padding:0 10px 28px}
        .rl466-nav{display:flex;flex-direction:column;gap:6px}
        .rl466-nav a{display:flex;align-items:center;gap:12px;padding:13px 12px;border-radius:9px;color:#a7bbd1;text-decoration:none;font-size:13px;font-weight:700}
        .rl466-nav a.active{background:#12312f;color:#3de8b5;border-left:2px solid #35dfad}
        .rl466-content{flex:1;min-width:0}
        .rl466-top{height:58px;border-bottom:1px solid #233448;display:flex;align-items:center;justify-content:space-between;padding:0 34px;font-size:11px;color:#819ab4;letter-spacing:1.5px}
        .rl466-main{max-width:1200px;margin:0 auto;padding:38px 34px 90px}
        .rl466-eyebrow{font-size:11px;letter-spacing:2px;color:#35dfad;font-weight:800}
        .rl466-heading{font-size:34px;letter-spacing:-1px;margin:13px 0 10px;font-weight:900}
        .rl466-desc{font-size:13px;color:#93a9bf;line-height:1.8}
        .rl466-sectiontitle{font-size:15px;font-weight:800;margin-bottom:16px}
        .rl466-filters{display:grid;grid-template-columns:200px 1fr;gap:20px;padding:23px}
        .rl466-label{display:block;font-size:11px;font-weight:800;color:#9bb0c7;letter-spacing:1px;margin-bottom:12px}
        .rl466-select{width:100%;padding:12px;border:1px solid #365064;border-radius:9px;background:#0b1727;color:#e9f3fb;font-size:14px}
        .rl466-venue{display:flex;flex-wrap:wrap;gap:8px}
        .rl466-races{display:grid;grid-template-columns:repeat(12,minmax(0,1fr));gap:8px}
        .rl466-tablehead,.rl466-horserow{display:grid;grid-template-columns:90px minmax(0,1fr) 130px;align-items:center;gap:12px}
        .rl466-tablehead{color:#7893ad;font-size:11px;letter-spacing:1px;padding:13px 18px;border-bottom:1px solid #2a3c4f}
        .rl466-horserow{padding:15px 18px;border-bottom:1px solid #223448;font-size:14px}
        .rl466-horserow:last-child{border-bottom:0}
        .rl466-horserow:nth-child(even){background:#142236}
        .rl466-action{display:inline-flex;align-items:center;justify-content:center;background:#35dfad;color:#06241e;padding:12px 18px;border-radius:9px;text-decoration:none;font-size:13px;font-weight:800}
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
                <button type="button" onClick={() => void loadRaces()} disabled={loading} style={{...btn,background:green,color:"#06241e",borderColor:green,opacity:loading?.65:1}}>{loading ? "取得中..." : "↻ データ更新"}</button>
              </div>
              {error && <div role="alert" style={{...panel,padding:18,borderColor:"#874652",color:"#ffb6bf"}}>{error}　<Link href="/login" style={{color:green}}>ログイン画面へ ↗</Link></div>}
              {!loading && !error && dates.length === 0 && <div style={{...panel,padding:24,color:muted}}>取得できる開催レースはまだありません。データ登録後に更新してください。</div>}
            </section>
            {dates.length > 0 && <>
              <section style={{marginBottom:24}}>
                <h2 className="rl466-sectiontitle">02　開催条件を選択</h2>
                <div style={panel} className="rl466-filters">
                  <div><label className="rl466-label" htmlFor="rl466-date">開催日</label><select className="rl466-select" id="rl466-date" value={selectedDate} onChange={e=>{setDate(e.target.value);setVenue("");setRaceNumber(null);}}>{dates.map(d=><option key={d} value={d}>{d}</option>)}</select></div>
                  <div><div className="rl466-label">競馬場</div><div className="rl466-venue">{venues.map(v=><button type="button" key={v} aria-pressed={selectedVenue===v} onClick={()=>{setVenue(v);setRaceNumber(null);}} style={{...btn,background:selectedVenue===v?"#123b34":"#19283b",borderColor:selectedVenue===v?green:"#304459",color:selectedVenue===v?green:"#dce8f5"}}>{v}</button>)}</div></div>
                </div>
              </section>
              <section style={{marginBottom:24}}><h2 className="rl466-sectiontitle">03　レース選択</h2><div style={{...panel,padding:18}}><div className="rl466-races">{availableRaces.map(r=><button type="button" key={r.race_id} aria-pressed={selectedRace?.race_id===r.race_id} onClick={()=>setRaceNumber(r.race_number)} style={{...btn,padding:"14px 4px",background:selectedRace?.race_id===r.race_id?green:"#19283b",borderColor:selectedRace?.race_id===r.race_id?green:"#304459",color:selectedRace?.race_id===r.race_id?"#06241e":"#dce8f5"}}>{r.race_number}R</button>)}</div></div></section>
            </>}
            {selectedRace && <section>
              <div style={{display:"flex",justifyContent:"space-between",alignItems:"center",gap:12,flexWrap:"wrap",marginBottom:16}}><h2 className="rl466-sectiontitle" style={{margin:0}}>04　出馬表 / {selectedRace.venue} {selectedRace.race_number}R</h2><span style={{color:muted,fontSize:12}}>{selectedRace.date}　|　登録 {horses.length}頭</span></div>
              <div style={panel}>
                {horses.some(h=>h.number==null)&&<div style={{padding:"14px 18px",color:"#f6ca76",fontSize:12,borderBottom:"1px solid #2a3c4f"}}>馬番が未確定の馬は「未定」と表示しています。</div>}
                <div className="rl466-tablehead"><span>馬番</span><span>馬名</span><span>AI予測</span></div>
                {horses.length===0?<div style={{padding:22,color:muted}}>出走馬データは未登録です。</div>:horses.map((h,i)=><div className="rl466-horserow" key={`${selectedRace.race_id}-${i}`}><span style={{fontWeight:800,color:green}}>{h.number==null?"未定":`${h.number}番`}</span><span style={{fontWeight:700,overflowWrap:"anywhere"}}>{h.name}</span><span style={{fontSize:12,color:muted}}>別画面で確認</span></div>)}
              </div>
              <div style={{marginTop:20,display:"flex",justifyContent:"flex-end"}}><Link className="rl466-action" href="/races/horse">AI予測・オッズ画面へ　↗</Link></div>
            </section>}
            <div style={{marginTop:42,fontSize:11,color:"#607c96"}}>RACE LAB / PRIVATE INTELLIGENCE PLATFORM</div>
          </div>
        </div>
      </div>
    </main>
  );
}
