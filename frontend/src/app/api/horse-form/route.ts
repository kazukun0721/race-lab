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
  if (ids.length === 0 || ids.length > 40 || !/^\d{4}-\d{2}-\d{2}$/.test(before)) {
    return NextResponse.json({ error: "パラメータが不正です。" }, { status: 400 });
  }

  const base = process.env.RACE_LAB_DATA_CENTER_URL;
  if (!base) {
    return NextResponse.json({ error: "近走データ取得機能が未設定です。" }, { status: 502 });
  }
  const url = new URL("/form", base);
  url.search = new URLSearchParams({ ids: ids.join(","), before }).toString();
  try {
    const response = await fetch(url, {
      cache: "no-store",
      signal: AbortSignal.timeout(30000),
      redirect: "error",
      headers: {
        Accept: "application/json",
        ...(process.env.RACE_LAB_DATA_CENTER_KEY
          ? { "x-racelab-key": process.env.RACE_LAB_DATA_CENTER_KEY }
          : {}),
      },
    });
    if (!response.ok) {
      return NextResponse.json({ error: "近走データを取得できませんでした。" }, { status: 502 });
    }
    return NextResponse.json(await response.json());
  } catch {
    return NextResponse.json({ error: "近走データ取得機能に接続できませんでした。" }, { status: 502 });
  }
}
