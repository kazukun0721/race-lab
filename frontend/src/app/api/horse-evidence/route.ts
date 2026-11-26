import { NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";

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
  const ids = (searchParams.get("ids") ?? "").split(",").filter(s => /^\d{10}$/.test(s));
  const before = searchParams.get("before") ?? "";
  const venue = searchParams.get("venue") ?? "";
  const surface = searchParams.get("surface") ?? "";
  const distanceRaw = searchParams.get("distance") ?? "";
  const going = searchParams.get("going") ?? "";
  let jockeys: Record<string, string> = {};
  try {
    const parsed = JSON.parse(searchParams.get("jockeys") ?? "{}");
    if (parsed && typeof parsed === "object" && !Array.isArray(parsed)) {
      for (const [k, v] of Object.entries(parsed)) {
        if (/^\d{10}$/.test(k) && typeof v === "string" && v.length <= 30) {
          jockeys[k] = v;
        }
      }
    }
  } catch {
    jockeys = {};
  }
  const distance = distanceRaw === "" ? 0 : Number(distanceRaw);
  if (
    ids.length === 0 || ids.length > 40 ||
    !/^\d{4}-\d{2}-\d{2}$/.test(before) ||
    venue.length > 10 || surface.length > 10 || going.length > 10 ||
    !Number.isFinite(distance) || distance < 0 || distance > 6000
  ) {
    return NextResponse.json({ error: "パラメータが不正です。" }, { status: 400 });
  }

  const base = process.env.RACE_LAB_DATA_CENTER_URL;
  if (!base) {
    return NextResponse.json({ error: "根拠データ取得機能が未設定です。" }, { status: 502 });
  }
  const url = new URL("/evidence", base);
  url.search = new URLSearchParams({
    ids: ids.join(","),
    jockeys: JSON.stringify(jockeys),
    before,
    venue,
    surface,
    distance: String(Math.trunc(distance)),
    going,
  }).toString();
  try {
    const response = await fetch(url, {
      cache: "no-store",
      signal: AbortSignal.timeout(90000),
      redirect: "error",
      headers: {
        Accept: "application/json",
        ...(process.env.RACE_LAB_DATA_CENTER_KEY
          ? { "x-racelab-key": process.env.RACE_LAB_DATA_CENTER_KEY }
          : {}),
      },
    });
    if (!response.ok) {
      return NextResponse.json({ error: "根拠データを取得できませんでした。" }, { status: 502 });
    }
    return NextResponse.json(await response.json());
  } catch {
    return NextResponse.json({ error: "根拠データ取得機能に接続できませんでした。" }, { status: 502 });
  }
}
