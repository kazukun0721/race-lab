import { NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";

const RACE_ID_PATTERN = /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i;

async function fetchDc(base: string, path: string, raceId: string) {
  const url = new URL(path, base);
  url.search = new URLSearchParams({ race_id: raceId }).toString();
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
  if (response.status === 404) return null;
  if (!response.ok) throw new Error(`DC ${path} ${response.status}`);
  return (await response.json()) as unknown;
}

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
    return NextResponse.json({ error: "結果データが未設定です。" }, { status: 502 });
  }
  try {
    const [result, review] = await Promise.all([
      fetchDc(base, "/race-result", raceId),
      fetchDc(base, "/race-review", raceId),
    ]);
    if (result === null && review === null) {
      return NextResponse.json(
        { error: "結果はまだありません。" },
        { status: 404 },
      );
    }
    return NextResponse.json({ result, review });
  } catch {
    return NextResponse.json(
      { error: "結果データに接続できませんでした。" },
      { status: 502 },
    );
  }
}
