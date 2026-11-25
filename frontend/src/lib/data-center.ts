import "server-only";

type Page<T> = { items: T[]; next_offset: number | null; has_more: boolean };
export const historyFilterKeys = ["year", "venue", "distance", "surface", "rank", "sort"] as const;
export type HistoryFilters = Partial<Record<(typeof historyFilterKeys)[number], string>>;
type History = Page<Result> & { total: number; history_total: number };
type Pedigree = { recorded_um: PedigreeSlot[]; linked_hn: PedigreeSlot[] };

export type Horse = { horse_id: string; name: string; sex_code: string; birth_date: string };
export type RacehorseLink = { status: "unique" | "ambiguous" | "unconfirmed"; horse_id: string | null };
export type Ancestor = {
  breeding_id: string | null; name?: string; resolved: boolean;
  birth_year?: string; sire_id?: string | null; dam_id?: string | null;
  racehorse?: RacehorseLink;
};
export type Line = "sire" | "dam";
export type Relation = "full" | "maternal" | "paternal";
type Lineage = {
  items: (Ancestor & { generation: number })[];
  stop_reason: "depth_limit" | "cycle" | "missing_parent" | "missing_reference";
  next_breeding_id: string | null;
};
type Sibling = {
  horse_id: string; name: string; birth_date: string; sire_id: string; dam_id: string;
  sire_name: string; dam_name: string; starts: number; wins: number;
  named_win: { race_id: string; name: string; race_date: string } | null;
};
export type Siblings = Page<Sibling> & { total: number; status: "confirmed" | "unconfirmed" };
export type PedigreeSlot = Ancestor & { path: string; generation: number };
export type Result = {
  race_id: string; race_date: string; race_name: string; horse_id: string;
  horse_number: string; horse_name_at_race: string; jockey_name: string;
  finish_position: number | null; abnormal_code: string; dead_heat: boolean;
  distance_m: number | null; surface: "turf" | "dirt" | "jump" | "sand" | null;
};
type Parents = Record<"sire_id" | "dam_id" | "damsire_um_id" | "damsire_hn_id", Ancestor>;
type Race = {
  race_id: string; name: string; race_date: string; venue_code: string;
  race_number: string; distance_m: number | null; starters: number | null;
};

export class HorseDataError extends Error {
  constructor(message: string, readonly status?: number) {
    super(message);
  }
}

async function optionalPedigree<T>(path: string) {
  try {
    return await query<T>(path);
  } catch (error) {
    if (error instanceof HorseDataError && error.status === 404) return null;
    throw error;
  }
}

export const isHorseId = (id: string) => /^[0-9]{10}$/.test(id);
export const isRaceId = (id: string) => /^[0-9]{16}$/.test(id);

async function query<T>(
  path: string, params?: URLSearchParams, missing = "指定した馬またはレースが見つかりません。", timeout = 4000,
): Promise<T> {
  const base = process.env.RACE_LAB_DATA_CENTER_URL;
  const port = process.env.RACE_LAB_DATA_CENTER_PORT ?? "8766";
  const unavailable = "DATA CENTERに接続できません。起動状態を確認してから、もう一度お試しください。";
  if (!base && (!/^[0-9]{1,5}$/.test(port) || Number(port) < 1 || Number(port) > 65535)) {
    throw new HorseDataError(unavailable);
  }
  const url = new URL(path, base ?? "http://127.0.0.1:" + port);
  if (params) url.search = params.toString();

  try {
    const response = await fetch(url, {
      cache: "no-store", signal: AbortSignal.timeout(timeout), redirect: "error",
      headers: {
        Accept: "application/json",
        ...(process.env.RACE_LAB_DATA_CENTER_KEY
          ? { "x-racelab-key": process.env.RACE_LAB_DATA_CENTER_KEY }
          : {}),
      },
    });
    if (response.status === 404) throw new HorseDataError(missing, 404);
    if (response.status === 422) throw new HorseDataError("検索条件を確認してください。");
    if (!response.ok) throw new HorseDataError(unavailable);
    return await response.json() as T;
  } catch (error) {
    if (error instanceof HorseDataError) throw error;
    throw new HorseDataError(unavailable);
  }
}

export const searchHorses = (q: string, offset: number) =>
  query<Page<Horse>>("/api/v1/horses", new URLSearchParams({ q, offset: String(offset), limit: "30" }));

export async function horseDetails(id: string, offset: number, filters: HistoryFilters) {
  if (!isHorseId(id)) throw new HorseDataError("馬IDは半角数字10桁で入力してください。");
  const path = "/api/v1/horses/" + id;
  const unknownHorse = "指定した馬IDは登録されていません。";
  const [horse, parents, pedigree, history] = await Promise.all([
    query<Horse>(path, undefined, unknownHorse),
    optionalPedigree<Parents>(path + "/parents"),
    optionalPedigree<Pedigree>(path + "/pedigree"),
    query<History>(path + "/history",
      new URLSearchParams({ ...filters, offset: String(offset), limit: "30" }), unknownHorse),
  ]);
  return { horse, parents, pedigree, history };
}

export async function raceDetails(id: string, offset: number) {
  if (!isRaceId(id)) throw new HorseDataError("レースIDは半角数字16桁で入力してください。");
  const path = "/api/v1/races/" + id;
  const [race, results] = await Promise.all([
    query<Race>(path),
    query<Page<Result>>(path + "/results", new URLSearchParams({ offset: String(offset), limit: "30" })),
  ]);
  return { race, results };
}


export const ancestorDetails = (id: string) => query<Ancestor>("/api/v1/ancestors/" + id);
export const pedigreeForHorse = (id: string) => optionalPedigree<Pedigree>("/api/v1/horses/" + id + "/pedigree");
export const ancestorLineage = (id: string, line: Line, depth: number) =>
  query<Lineage>("/api/v1/ancestors/" + id + "/lineage",
    new URLSearchParams({ line, depth: String(depth) }));
export const horseSiblings = (id: string, relation: Relation, offset: number) =>
  query<Siblings>("/api/v1/horses/" + id + "/siblings",
    new URLSearchParams({ relation, offset: String(offset), limit: "30" }), "指定した馬IDは登録されていません。");


export type AnalysisScope = "horse" | "sire" | "dam" | "damsire";
export type AnalysisGroup = "venue" | "surface" | "distance" | "going" | "year" | "jockey";
type AnalysisCounts = {
  starts: number; wins: number; seconds: number; thirds: number;
  win_rate: number | null; top2_rate: number | null; top3_rate: number | null;
  average_finish: number | null; ranked_starts: number; horses_with_starts: number;
  first_race: string | null; last_race: string | null;
};
export type Performance = {
  horse_id: string; horse_name: string; scope: AnalysisScope; group_by: AnalysisGroup;
  status: "confirmed" | "unconfirmed"; reason: string | null; as_of: string | null;
  reference: { um: Ancestor; hn: Ancestor | null } | null; cohort_horses: number;
  total: AnalysisCounts; groups: (AnalysisCounts & {key: string})[];
  quality: {
    excluded_horses: Record<string,number>; excluded_results: Record<string,number>;
    unranked_starts: number; unknown_condition: number; going_sources: Record<string,number>;
  };
  named_wins: {race_id: string; race_date: string; name: string; horse_id: string}[];
};
export function horsePerformance(id: string, scope: AnalysisScope, group: AnalysisGroup, asOf: string) {
  const params = new URLSearchParams({ group_by:group });
  if (asOf) params.set("as_of",asOf);
  const path = "/api/v1/horses/" + id;
  if (scope === "horse") return query<Performance>(path + "/analysis",params,"指定した馬IDは登録されていません。", 20000);
  params.set("scope",scope);
  return query<Performance>(path + "/pedigree-performance",params,"指定した馬IDは登録されていません。", 20000);
}
