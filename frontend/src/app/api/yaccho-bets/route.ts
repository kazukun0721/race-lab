import { NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";

const RACE_ID_PATTERN = /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i;

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
  const raceId = searchParams.get("race_id") ?? "";
  if (!RACE_ID_PATTERN.test(raceId)) {
    return NextResponse.json({ error: "パラメータが不正です。" }, { status: 400 });
  }

  const base = process.env.RACE_LAB_DATA_CENTER_URL;
  if (!base) {
    return NextResponse.json({ error: "AI買い目が未設定です。" }, { status: 502 });
  }
  const url = new URL("/yaccho-bets", base);
  url.search = new URLSearchParams({ race_id: raceId }).toString();
  try {
    const response = await fetch(url, {
      cache: "no-store",
      signal: AbortSignal.timeout(20000),
      redirect: "error",
      headers: {
        Accept: "application/json",
        ...(process.env.RACE_LAB_DATA_CENTER_KEY
          ? { "x-racelab-key": process.env.RACE_LAB_DATA_CENTER_KEY }
          : {}),
      },
    });
    if (response.status === 404) {
      return NextResponse.json(
        { error: "AI買い目はまだ生成されていません。" },
        { status: 404 },
      );
    }
    if (!response.ok) {
      return NextResponse.json(
        { error: "AI買い目を取得できませんでした。" },
        { status: 502 },
      );
    }
    return NextResponse.json(await response.json());
  } catch {
    return NextResponse.json(
      { error: "AI買い目に接続できませんでした。" },
      { status: 502 },
    );
  }
}
