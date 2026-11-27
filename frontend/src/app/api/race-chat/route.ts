import { NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";

const RACE_ID_PATTERN = /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i;

async function requireUser() {
  const supabase = await createClient();
  const {
    data: { user },
    error,
  } = await supabase.auth.getUser();
  return error || !user ? null : user;
}

function dataCenterHeaders(): Record<string, string> {
  return {
    Accept: "application/json",
    ...(process.env.RACE_LAB_DATA_CENTER_KEY
      ? { "x-racelab-key": process.env.RACE_LAB_DATA_CENTER_KEY }
      : {}),
  };
}

export async function GET(request: Request) {
  const user = await requireUser();
  if (!user) {
    return NextResponse.json({ error: "ログインが必要です。" }, { status: 401 });
  }
  const { searchParams } = new URL(request.url);
  const raceId = searchParams.get("race_id") ?? "";
  const afterRaw = searchParams.get("after") ?? "0";
  const after = /^\d+$/.test(afterRaw) ? Number(afterRaw) : 0;
  if (!RACE_ID_PATTERN.test(raceId)) {
    return NextResponse.json({ error: "パラメータが不正です。" }, { status: 400 });
  }
  const base = process.env.RACE_LAB_DATA_CENTER_URL;
  if (!base) {
    return NextResponse.json({ error: "チャット機能が未設定です。" }, { status: 502 });
  }
  const url = new URL("/race-chat/list", base);
  url.search = new URLSearchParams({
    thread: `${raceId}:${user.id}`,
    after: String(after),
  }).toString();
  try {
    const response = await fetch(url, {
      cache: "no-store",
      signal: AbortSignal.timeout(20000),
      redirect: "error",
      headers: dataCenterHeaders(),
    });
    if (!response.ok) {
      return NextResponse.json({ error: "チャットを取得できませんでした。" }, { status: 502 });
    }
    return NextResponse.json(await response.json());
  } catch {
    return NextResponse.json({ error: "チャット機能に接続できませんでした。" }, { status: 502 });
  }
}

export async function POST(request: Request) {
  const user = await requireUser();
  if (!user) {
    return NextResponse.json({ error: "ログインが必要です。" }, { status: 401 });
  }
  let parsed: unknown;
  try {
    parsed = await request.json();
  } catch {
    return NextResponse.json({ error: "パラメータが不正です。" }, { status: 400 });
  }
  const body = (parsed ?? {}) as { race_id?: unknown; text?: unknown; context?: unknown };
  const raceId = typeof body.race_id === "string" ? body.race_id : "";
  const text = typeof body.text === "string" ? body.text.trim() : "";
  if (!RACE_ID_PATTERN.test(raceId) || text.length === 0 || text.length > 1000) {
    return NextResponse.json({ error: "パラメータが不正です。" }, { status: 400 });
  }
  const context =
    body.context && typeof body.context === "object" && !Array.isArray(body.context)
      ? body.context
      : null;
  const base = process.env.RACE_LAB_DATA_CENTER_URL;
  if (!base) {
    return NextResponse.json({ error: "チャット機能が未設定です。" }, { status: 502 });
  }
  try {
    const response = await fetch(new URL("/race-chat/send", base), {
      method: "POST",
      cache: "no-store",
      signal: AbortSignal.timeout(30000),
      redirect: "error",
      headers: { ...dataCenterHeaders(), "Content-Type": "application/json" },
      body: JSON.stringify({ thread: `${raceId}:${user.id}`, text, context }),
    });
    if (!response.ok) {
      return NextResponse.json({ error: "送信できませんでした。" }, { status: 502 });
    }
    return NextResponse.json(await response.json());
  } catch {
    return NextResponse.json({ error: "チャット機能に接続できませんでした。" }, { status: 502 });
  }
}
