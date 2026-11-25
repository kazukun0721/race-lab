"use client";

import { Fragment, useCallback, useEffect, useMemo, useRef, useState } from "react";
import "./history.css";

type Race = {
  race_id: string;
  race_date: string;
  venue: string;
  race_number: number;
  race_name: string;
  surface: string;
  distance_m: number;
  going: string;
  declared_horses: number;
};

type Entry = {
  horse_number: number;
  horse_name: string;
  finish_position: number | null;
  abnormal_code?: string | number | null;
  jockey: string | null;
  trainer: string | null;
  win_odds: number | null;
  popularity: number | null;
  horse_id: string | null;
};

type TargetMetrics = {
  pci: number | null;
  pci3: number | null;
  race_pci: number | null;
  last3f_rank: number | null;
  last3f_point_gap_seconds: number | null;
  ave_3f_seconds: number | null;
  corner4_position: number | null;
};

type HorseHistory = {
  race_id: string;
  race_date: string;
  venue: string;
  race_name: string;
  horse_number: number;
  finish_position: number | null;
  abnormal_code?: string | number | null;
  win_odds: number | null;
  surface: string | null;
  distance_m: number | null;
  going: string | null;
  race_time: string | null;
  last3f_seconds: number | null;
  corner_positions: (number | null)[];
  id_source: "registered" | "jv_match";
  target_metrics?: TargetMetrics | null;
};

type HorseDetail = {
  horse_id: string;
  horse_name: string;
  starts: number;
  wins: number;
  top3: number;
  registered_entries: number;
  jv_matched_entries: number;
  history: HorseHistory[];
};

type Stats = {
  races: number;
  entries: number;
  linked_entries: number;
  identified_horses: number;
  link_rate: number;
};

const venueOrder = [
  "札幌", "函館", "福島", "新潟", "東京",
  "中山", "中京", "京都", "阪神", "小倉"
];

const pageSize = 200;

async function api<T>(path: string): Promise<T> {
  const response = await fetch(path, { cache: "no-store" });
  const data = await response.json();

  if (!response.ok) {
    throw new Error(data.error || data.detail || `APIエラー ${response.status}`);
  }

  return data as T;
}

function fmt(n: number) {
  return n.toLocaleString("ja-JP");
}

function formatFinish(position: number | null, abnormalCode?: string | number | null) {
  if (position !== null && position > 0) return position;

  // JVData code table 2101. Default and unknown codes do not identify an outcome.
  switch (String(abnormalCode ?? "").trim()) {
    case "1": return "出走取消";
    case "2": return "発走除外";
    case "3": return "競走除外";
    case "4": return "競走中止";
    case "5": return "失格";
    default: return "－";
  }
}

type AnalysisRow = {
  label: string;
  starts: number;
  wins: number;
  top3: number;
};

function HorseAnalysis({ history }: { history: HorseHistory[] }) {
  function summarize(
    category: (h: HorseHistory) => string | null,
    order?: string[]
  ): AnalysisRow[] {
    const groups = new Map<string, AnalysisRow>();

    for (const h of history) {
      const label = category(h);
      if (!label) continue;

      const row = groups.get(label) ?? {
        label,
        starts: 0,
        wins: 0,
        top3: 0
      };

      row.starts += 1;
      if (h.finish_position === 1) row.wins += 1;
      if (
        h.finish_position !== null &&
        h.finish_position >= 1 &&
        h.finish_position <= 3
      ) {
        row.top3 += 1;
      }

      groups.set(label, row);
    }

    const rows = [...groups.values()];
    return order
      ? rows.sort((a, b) =>
          order.indexOf(a.label) - order.indexOf(b.label)
        )
      : rows.sort((a, b) => b.starts - a.starts);
  }

  const surfaces = summarize(h => {
    const s = (h.surface ?? "").trim();
    if (s.includes("障")) return "障害";
    if (s.includes("ダート") || s === "ダ") return "ダート";
    if (s.includes("芝")) return "芝";
    return s ? "その他" : null;
  }, ["芝", "ダート", "障害", "その他"]);

  const distances = summarize(h => {
    const d = h.distance_m;
    if (d == null || d <= 0) return null;
    if (d < 1400) return "短距離（1400m未満）";
    if (d < 1800) return "マイル前後（1400～1799m）";
    if (d < 2400) return "中距離（1800～2399m）";
    return "長距離（2400m以上）";
  }, [
    "短距離（1400m未満）",
    "マイル前後（1400～1799m）",
    "中距離（1800～2399m）",
    "長距離（2400m以上）"
  ]);

  const venues = summarize(h => h.venue?.trim() || null);

  function percent(n: number, total: number) {
    return total ? `${(n / total * 100).toFixed(1)}%` : "－";
  }

  function table(title: string, rows: AnalysisRow[]) {
    return (
      <div className="rh-analysis-group">
        <h4>{title}</h4>
        <div className="rh-table-wrap">
          <table className="rh-table">
            <thead>
              <tr>
                <th>条件</th>
                <th>戦績</th>
                <th>1着</th>
                <th>3着以内</th>
                <th>勝率</th>
                <th>3着内率</th>
              </tr>
            </thead>
            <tbody>
              {rows.map(r => (
                <tr key={r.label}>
                  <td>{r.label}</td>
                  <td>{r.starts}</td>
                  <td>{r.wins}</td>
                  <td>{r.top3}</td>
                  <td>{percent(r.wins, r.starts)}</td>
                  <td>{percent(r.top3, r.starts)}</td>
                </tr>
              ))}
              {!rows.length && (
                <tr>
                  <td colSpan={6}>集計できるデータがありません</td>
                </tr>
              )}
            </tbody>
          </table>
        </div>
      </div>
    );
  }

  return (
    <div className="rh-analysis">
      <div className="rh-analysis-title">
        <strong>CONDITION ANALYSIS</strong>
        <span>条件別パフォーマンス / 確認済み履歴のみ</span>
      </div>
      <div className="rh-analysis-grid">
        {table("芝・ダート別", surfaces)}
        {table("馬場状態別", summarize(h => h.going?.trim() || null))}
        {table("距離帯別", distances)}
        {table("競馬場別", venues)}
      </div>
      <p className="rh-note">
        勝率と3着内率の分母は、各条件で馬IDを確認できた戦績件数です。
        条件が空欄の戦績は、その条件別集計から除いています。
      </p>
    </div>
  );
}

export default function HistoryPage() {
  const [year, setYear] = useState("2026");
  const [races, setRaces] = useState<Race[]>([]);
  const [dates, setDates] = useState<string[]>([]);
  const [month, setMonth] = useState("");
  const [date, setDate] = useState("");
  const [venue, setVenue] = useState("");
  const [raceId, setRaceId] = useState("");
  const [raceEntries, setRaceEntries] = useState<{ id: string; items: Entry[] } | null>(null);
  const [sortKey, setSortKey] = useState<"finish" | "number" | "odds" | "popularity">("finish");
  const [sortDir, setSortDir] = useState<1 | -1>(1);
  const [horse, setHorse] = useState<HorseDetail | null>(null);
  const [horseLoading, setHorseLoading] = useState(false);
  const [horseError, setHorseError] = useState("");
  const horsePanel = useRef<HTMLDivElement>(null);
  const [stats, setStats] = useState<Stats | null>(null);
  const [light, setLight] = useState(false);

  useEffect(() => {
    if (localStorage.getItem("rh-theme") === "light") setLight(true);
  }, []);

  function toggleTheme() {
    const next = !light;
    setLight(next);
    localStorage.setItem("rh-theme", next ? "light" : "dark");
  }
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState("");

  const loadDate = useCallback(async (selectedDate: string) => {
    setLoading(true);
    setError("");
    setHorse(null);
    setRaceEntries(null);
    setRaceId("");
    setVenue("");

    try {
      const result = await api<{ items: Race[] }>(
        `/api/history/races?date=${selectedDate}&limit=${pageSize}`
      );

      setRaces(result.items);
    } catch (e) {
      setError(e instanceof Error ? e.message : "レースを取得できません");
      setRaces([]);
    } finally {
      setLoading(false);
    }
  }, []);

  const loadYear = useCallback(async (selectedYear: string) => {
    setLoading(true);
    setError("");

    try {
      const result = await api<{ items: string[] }>(
        `/api/history/dates?year=${selectedYear}`
      );

      setDates(result.items);
      const first = result.items[0] || "";
      setDate(first);
      setMonth(first.slice(0, 7));

      if (first) {
        await loadDate(first);
      } else {
        setRaces([]);
        setLoading(false);
      }
    } catch (e) {
      setError(e instanceof Error ? e.message : "開催日を取得できません");
      setDates([]);
      setRaces([]);
      setLoading(false);
    }
  }, [loadDate]);

  useEffect(() => {
    let cancelled = false;
    void Promise.resolve().then(() => {
      if (!cancelled) return loadYear("2026");
    });
    void api<Stats>("/api/history/stats")
      .then(data => { if (!cancelled) setStats(data); })
      .catch(() => {});
    return () => { cancelled = true; };
  }, [loadYear]);

  const months = useMemo(
    () => [...new Set(dates.map(d => d.slice(0, 7)))],
    [dates]
  );

  const selectedDate = dates.includes(date) ? date : (dates[0] || "");
  const selectedMonth = months.includes(month)
    ? month
    : (selectedDate.slice(0, 7) || "");
  const daysInMonth = useMemo(
    () => dates.filter(d => d.slice(0, 7) === selectedMonth),
    [dates, selectedMonth]
  );

  const venues = useMemo(
    () => [...new Set(
      races.filter(r => r.race_date === selectedDate).map(r => r.venue)
    )].sort(
      (a, b) => venueOrder.indexOf(a) - venueOrder.indexOf(b)
    ),
    [races, selectedDate]
  );

  const selectedVenue = venues.includes(venue) ? venue : (venues[0] || "");

  const availableRaces = useMemo(
    () => races
      .filter(r => r.race_date === selectedDate && r.venue === selectedVenue)
      .sort((a, b) => a.race_number - b.race_number),
    [races, selectedDate, selectedVenue]
  );

  const selectedRace = availableRaces.find(r => r.race_id === raceId)
    || availableRaces[0]
    || null;
  const selectedRaceId = selectedRace?.race_id;
  const entries = raceEntries?.id === selectedRaceId ? raceEntries?.items ?? [] : [];
  const detailLoading = Boolean(selectedRaceId && raceEntries?.id !== selectedRaceId);

  const sortedEntries = useMemo(() => {
    const value = (e: Entry): number | null => {
      if (sortKey === "finish") {
        return e.finish_position !== null && e.finish_position > 0
          ? e.finish_position
          : null;
      }
      if (sortKey === "number") return e.horse_number;
      if (sortKey === "odds") return e.win_odds;
      return e.popularity;
    };

    return [...entries].sort((a, b) => {
      const av = value(a);
      const bv = value(b);
      if (av === null && bv === null) return a.horse_number - b.horse_number;
      if (av === null) return 1;
      if (bv === null) return -1;
      if (av !== bv) return (av - bv) * sortDir;
      return a.horse_number - b.horse_number;
    });
  }, [entries, sortKey, sortDir]);

  function toggleSort(key: typeof sortKey) {
    if (key === sortKey) {
      setSortDir(d => (d === 1 ? -1 : 1));
    } else {
      setSortKey(key);
      setSortDir(1);
    }
  }

  function sortMark(key: typeof sortKey) {
    if (key !== sortKey) return "";
    return sortDir === 1 ? " ▲" : " ▼";
  }

  useEffect(() => {
    if (!selectedRaceId) return;
    setSortKey("finish");
    setSortDir(1);

    let cancelled = false;
    void api<{ entries: Entry[] }>(
      `/api/history/races/${selectedRaceId}`
    ).then(data => {
      if (!cancelled) setRaceEntries({ id: selectedRaceId, items: data.entries });
    }).catch(e => {
      if (!cancelled) {
        setRaceEntries({ id: selectedRaceId, items: [] });
        setError(e instanceof Error ? e.message : "出走馬の取得に失敗");
      }
    });

    return () => { cancelled = true; };
  }, [selectedRaceId]);

  useEffect(() => {
    if (horse) horsePanel.current?.scrollIntoView({ block: "start" });
  }, [horse]);

  async function openHorse(id: string) {
    setHorseLoading(true);
    setHorseError("");

    try {
      const result = await api<HorseDetail>(`/api/history/horses/${id}`);
      setHorse(result);
    } catch (e) {
      setHorseError(e instanceof Error ? e.message : "馬の成績を取得できません");
    } finally {
      setHorseLoading(false);
    }
  }

  return (
    <main className={light ? "rh-root rh-light" : "rh-root"}>
      <header className="rh-topbar">
        <span>WORKSPACE　 /　 RACE ARCHIVE</span>
        <span>JRA HISTORICAL DATABASE</span>
        <button type="button" className="rh-theme-toggle" onClick={toggleTheme}>
          テーマ：{light ? "ホワイト" : "ダーク"}
        </button>
      </header>

      <div className="rh-content">
        <div className="rh-eyebrow">● RACE INTELLIGENCE / ARCHIVE</div>

        <div className="rh-hero">
          <div>
            <h1>Race Archive<span>.</span></h1>
            <p>中央競馬の過去レース・出走履歴を検索するデータワークスペース。</p>
          </div>
          <div className="rh-hero-mark">R<span>.</span></div>
        </div>

        {stats && (
          <div className="rh-stats">
            {[
              ["TOTAL RACES", fmt(stats.races), "登録レース"],
              ["HORSE ENTRIES", fmt(stats.entries), "出走履歴"],
              ["IDENTIFIED HORSES", fmt(stats.identified_horses), "個体識別済み"],
              ["ID COVERAGE", `${stats.link_rate}%`, "履歴DBに登録済みの紐付け率"],
            ].map(([label, value, sub]) => (
              <div className="rh-stat" key={label}>
                <div className="rh-stat-label">{label}</div>
                <strong>{value}</strong>
                <small>{sub}</small>
              </div>
            ))}
          </div>
        )}

        <div className="rh-section-heading">
          <h2><span>01</span> 開催条件を選択</h2>
          <small>RACE SELECTOR</small>
        </div>

        <section className="rh-panel rh-filter">
          <div className="rh-filter-top">
            <label>
              <span>対象年</span>
              <select
                value={year}
                onChange={e => {
                  const next = e.target.value;
                  setYear(next);
                  void loadYear(next);
                }}
              >
                {Array.from({ length: 41 }, (_, i) => 2026 - i).map(y => (
                  <option value={y} key={y}>{y}年</option>
                ))}
              </select>
            </label>

            <label>
              <span>開催月</span>
              <select
                value={selectedMonth}
                onChange={e => {
                  const nextMonth = e.target.value;
                  setMonth(nextMonth);
                  const target = dates.find(d => d.slice(0, 7) === nextMonth) || "";
                  setDate(target);
                  if (target) void loadDate(target);
                }}
                disabled={!months.length}
              >
                {months.map(m => (
                  <option value={m} key={m}>{m.replace("-", "年")}月</option>
                ))}
              </select>
            </label>

            <label>
              <span>開催日</span>
              <select
                value={selectedDate}
                onChange={e => {
                  setDate(e.target.value);
                  void loadDate(e.target.value);
                }}
                disabled={!daysInMonth.length}
              >
                {daysInMonth.map(d => (
                  <option value={d} key={d}>
                    {`${Number(d.slice(8, 10))}日（${"日月火水木金土"[new Date(`${d}T00:00:00`).getDay()]}）`}
                  </option>
                ))}
              </select>
            </label>
          </div>

          <div className="rh-filter-label">競馬場</div>
          <div className="rh-venues">
            {venues.map(v => (
              <button
                key={v}
                className={selectedVenue === v ? "selected" : ""}
                onClick={() => {
                  setVenue(v);
                  setRaceId("");
                  setHorse(null);
                }}
              >
                {v}
              </button>
            ))}
          </div>
        </section>

        <div className="rh-section-heading">
          <h2><span>02</span> レース選択</h2>
          <small>{selectedDate || "NO DATE"}</small>
        </div>

        <section className="rh-panel rh-race-panel">
          <div className="rh-race-buttons">
            {Array.from({ length: 12 }, (_, i) => i + 1).map(n => {
              const r = availableRaces.find(x => x.race_number === n);

              return (
                <button
                  key={n}
                  disabled={!r}
                  className={selectedRace?.race_id === r?.race_id ? "selected" : ""}
                  onClick={() => {
                    if (r) {
                      setRaceId(r.race_id);
                      setHorse(null);
                      setHorse(null);
                    }
                  }}
                >
                  {n}R
                </button>
              );
            })}
          </div>
        </section>

        {error && <div className="rh-error" role="alert">{error}</div>}
        {loading && <p className="rh-muted">レースデータを読み込み中...</p>}

        {!loading && !races.length && !error && (
          <div className="rh-panel rh-empty">この範囲のレースはありません。</div>
        )}

        {selectedRace && (
          <>
            <div className="rh-section-heading">
              <h2><span>03</span> レース結果・出走馬</h2>
              <small>RACE RESULTS</small>
            </div>

            <section className="rh-panel">
              <div className="rh-race-summary">
                <div>
                  <div className="rh-eyebrow">
                    {selectedRace.race_date} / {selectedRace.venue} {selectedRace.race_number}R
                  </div>
                  <h3>{selectedRace.race_name || "一般競走"}</h3>
                  <p>
                    {selectedRace.surface} {selectedRace.distance_m}m
                    <span> / </span> 馬場 {selectedRace.going}
                    <span> / </span> {selectedRace.declared_horses}頭
                  </p>
                </div>
                <span className="rh-result-tag">RESULT</span>
              </div>

              <div className="rh-table-wrap">
                <table className="rh-table">
                  <thead>
                    <tr>
                      <th><button type="button" className="rh-sort" onClick={() => toggleSort("finish")}>着順{sortMark("finish")}</button></th>
                      <th><button type="button" className="rh-sort" onClick={() => toggleSort("number")}>馬番{sortMark("number")}</button></th>
                      <th>馬名</th>
                      <th>騎手</th>
                      <th>調教師</th>
                      <th><button type="button" className="rh-sort" onClick={() => toggleSort("odds")}>単勝{sortMark("odds")}</button></th>
                      <th><button type="button" className="rh-sort" onClick={() => toggleSort("popularity")}>人気{sortMark("popularity")}</button></th>
                      <th>過去成績</th>
                    </tr>
                  </thead>
                  <tbody>
                    {sortedEntries.map(e => (
                      <tr key={e.horse_number}>
                        <td className="rh-finish">{formatFinish(e.finish_position, e.abnormal_code)}</td>
                        <td>
                          <span className="rh-horse-number">{e.horse_number}</span>
                        </td>
                        <td className="rh-horse-name">
                          {e.horse_id ? (
                            <button disabled={horseLoading} onClick={() => void openHorse(e.horse_id!)}>
                              {e.horse_name}
                            </button>
                          ) : e.horse_name}
                        </td>
                        <td>{e.jockey || "－"}</td>
                        <td>{e.trainer || "－"}</td>
                        <td>{e.win_odds ?? "－"}</td>
                        <td>{e.popularity ?? "－"}</td>
                        <td>
                          {e.horse_id
                            ? <button className="rh-history-link" disabled={horseLoading} onClick={() => void openHorse(e.horse_id!)}>
                                詳細 ↗
                              </button>
                            : <span className="rh-muted">未連携</span>}
                        </td>
                      </tr>
                    ))}
                  </tbody>
                </table>
              </div>

              {detailLoading && !horse && (
                <p className="rh-loading">詳細データを読み込み中...</p>
              )}
            </section>
          </>
        )}

        {horseError && <p className="rh-horse-error" role="alert">{horseError}</p>}
        {horseLoading && <p className="rh-muted" role="status">馬の戦績を読み込み中…</p>}
        {horse && (
          <>
            <div className="rh-section-heading" ref={horsePanel}>
              <h2><span>04</span> 馬の個体別成績</h2>
              <small>HORSE PERFORMANCE</small>
            </div>

            <section className="rh-panel">
              <div className="rh-horse-heading">
                <div>
                  <div className="rh-eyebrow">HORSE PROFILE / VERIFIED ID</div>
                  <h3>{horse.horse_name}</h3>
                  <p>血統登録番号：{horse.horse_id}</p>
                </div>
                <button onClick={() => setHorse(null)}>閉じる ×</button>
              </div>

              <div className="rh-horse-stats">
                <div><strong>{horse.starts}</strong><span>確認済み戦績件数</span></div>
                <div><strong>{horse.wins}</strong><span>1着回数</span></div>
                <div><strong>{horse.top3}</strong><span>3着以内</span></div>
                <div>
                  <strong>
                    {horse.starts
                      ? (horse.wins / horse.starts * 100).toFixed(1)
                      : "0.0"}%
                  </strong>
                  <span>確認済み履歴の勝率</span>
                </div>
              </div>

              <div className="rh-table-wrap">
                <table className="rh-table">
                  <thead>
                    <tr>
                      <th>開催日</th>
                      <th>競馬場</th>
                      <th>レース</th>
                      <th>馬番</th>
                      <th>着順</th>
                      <th>距離・馬場</th>
                      <th>走破タイム</th>
                      <th>上がり3F</th>
                      <th>通過順位</th>
                      <th>単勝</th>
                    </tr>
                  </thead>
                  <tbody>
                    {horse.history.map(h => {
                      const m = h.target_metrics;
                      const pairs: string[] = m ? [
                        m.pci != null ? `PCI ${m.pci}` : null,
                        m.last3f_rank != null ? `上がり3F順位 ${m.last3f_rank}` : null,
                        m.last3f_point_gap_seconds != null ? `上3F地点差 ${m.last3f_point_gap_seconds}秒` : null,
                        m.ave_3f_seconds != null ? `Ave-3F ${m.ave_3f_seconds}秒` : null,
                        m.corner4_position != null ? `4角通過 ${m.corner4_position}` : null,
                        m.pci3 != null ? `PCI3 ${m.pci3}` : null,
                        m.race_pci != null ? `レースPCI ${m.race_pci}` : null,
                      ].filter((s): s is string => s !== null) : [];

                      return (
                        <Fragment key={`${h.race_id}-${h.horse_number}`}>
                          <tr>
                            <td>{h.race_date}</td>
                            <td>{h.venue}</td>
                            <td>{h.race_name || "一般競走"}</td>
                            <td>{h.horse_number}</td>
                            <td className="rh-finish">{formatFinish(h.finish_position, h.abnormal_code)}</td>
                            <td>{[
                              h.surface, h.distance_m ? `${h.distance_m}m` : null, h.going,
                            ].filter(Boolean).join(" / ") || "－"}</td>
                            <td>{h.race_time ?? "－"}</td>
                            <td>{h.last3f_seconds == null ? "－" : `${h.last3f_seconds.toFixed(1)}秒`}</td>
                            <td>{h.corner_positions.some(n => n !== null)
                              ? h.corner_positions.map(n => n ?? "－").join(" / ")
                              : "－"}</td>
                            <td>{h.win_odds ?? "－"}</td>
                          </tr>
                          {pairs.length > 0 && (
                            <tr className="rh-metrics-row">
                              <td colSpan={10}>
                                {"TARGET指標：" + pairs.join("　／　")}
                              </td>
                            </tr>
                          )}
                        </Fragment>
                      );
                    })}
                  </tbody>
                </table>
              </div>

              <HorseAnalysis history={horse.history} />

              <p className="rh-note">
                履歴DB登録済み {horse.registered_entries}件 ／ JV馬IDとの読み取り時照合 {horse.jv_matched_entries}件。
                馬IDが確認できる戦績を表示しています。血統表は未収録です。
                TARGET指標は2024年の中央競馬分で、ある戦績だけ行の下に細く表示しています。
              </p>
            </section>
          </>
        )}

        <footer className="rh-footer">
          RACE LAB / HISTORICAL INTELLIGENCE DATABASE
        </footer>
      </div>
    </main>
  );
}


