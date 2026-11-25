import { NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";

const BET_TYPES = new Set(["単勝", "複勝", "馬連", "ワイド", "馬単", "3連複", "3連単"]);

export async function GET(request: Request) {
  const supabase = await createClient();
  const {
    data: { user },
    error: authError,
  } = await supabase.auth.getUser();
  if (authError || !user) {
    return NextResponse.json({ error: "ログインが必要です。" }, { status: 401 });
  }

  const { searchParams } = new URL(request.url);
  const raceKey = searchParams.get("race_key") ?? "";
  const betType = searchParams.get("bet_type") ?? "";
  const selection = searchParams.get("selection") ?? "";
  const selections = searchParams.get("selections") ?? "";
  const selPattern = /^\d{1,2}(-\d{1,2}){0,2}$/;
  const bulkValid = selections !== "" && selections.split(",").length <= 1000
    && selections.split(",").every(s => selPattern.test(s));
  if (!/^\d{16}$/.test(raceKey) || !BET_TYPES.has(betType)
      || (selections ? !bulkValid : !selPattern.test(selection))) {
    return NextResponse.json({ error: "パラメータが不正です。" }, { status: 400 });
  }

  const base = process.env.RACE_LAB_DATA_CENTER_URL;
  if (!base) {
    return NextResponse.json({ error: "オッズ取得機能が未設定です。" }, { status: 502 });
  }
  const url = new URL("/combo-odds", base);
  url.search = new URLSearchParams(selections
    ? { race_key: raceKey, bet_type: betType, selections }
    : { race_key: raceKey, bet_type: betType, selection }).toString();
  try {
    const response = await fetch(url, {
      cache: "no-store",
      signal: AbortSignal.timeout(60000),
      redirect: "error",
      headers: {
        Accept: "application/json",
        ...(process.env.RACE_LAB_DATA_CENTER_KEY
          ? { "x-racelab-key": process.env.RACE_LAB_DATA_CENTER_KEY }
          : {}),
      },
    });
    if (!response.ok) {
      return NextResponse.json({ error: "オッズを取得できませんでした。" }, { status: 502 });
    }
    return NextResponse.json(await response.json());
  } catch {
    return NextResponse.json({ error: "オッズ取得機能に接続できませんでした。" }, { status: 502 });
  }
}
