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
  const raw = Number(searchParams.get("count") ?? "8");
  const count = Number.isFinite(raw) ? Math.max(1, Math.min(20, Math.floor(raw))) : 8;
  const rawDecade = searchParams.get("decade") ?? "";
  const decade = ["1980", "1990", "2000", "2010", "2020"].includes(rawDecade)
    ? rawDecade
    : null;

  const base = process.env.RACE_LAB_DATA_CENTER_URL;
  if (!base) {
    return NextResponse.json({ error: "クイズ機能が未設定です。" }, { status: 502 });
  }
  const url = new URL("/quiz", base);
  const params: Record<string, string> = { count: String(count) };
  if (decade) params.decade = decade;
  url.search = new URLSearchParams(params).toString();
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
      return NextResponse.json({ error: "クイズを取得できませんでした。" }, { status: 502 });
    }
    return NextResponse.json(await response.json());
  } catch {
    return NextResponse.json({ error: "クイズ機能に接続できませんでした。" }, { status: 502 });
  }
}
