import { NextRequest, NextResponse } from "next/server";

export async function GET(
  request: NextRequest,
  context: { params: Promise<{ path: string[] }> }
) {
  const { path } = await context.params;

  const allowed =
    (path.length === 1 &&
      ["stats", "races", "horses"].includes(path[0])) ||
    (path.length === 2 &&
      path[0] === "races" &&
      /^\d{16}$/.test(path[1])) ||
    (path.length === 2 &&
      path[0] === "horses" &&
      /^\d{10}$/.test(path[1]));

  if (!allowed) {
    return NextResponse.json(
      { error: "不正なAPIパスです" },
      { status: 400 }
    );
  }

  const base =
    process.env.RACE_LAB_DATA_CENTER_URL ?? "http://127.0.0.1:8765";
  const url = new URL(`/api/history/${path.join("/")}`, base);

  request.nextUrl.searchParams.forEach((value, key) => {
    if (
      ["year", "venue", "limit", "offset"].includes(key) ||
      (path.length === 1 && path[0] === "horses" && key === "q")
    ) {
      url.searchParams.set(key, value);
    }
  });

  try {
    const response = await fetch(url, {
      cache: "no-store",
      signal: AbortSignal.timeout(15000),
      headers: process.env.RACE_LAB_DATA_CENTER_KEY
        ? { "x-racelab-key": process.env.RACE_LAB_DATA_CENTER_KEY }
        : undefined,
    });

    const body = await response.text();

    return new NextResponse(body, {
      status: response.status,
      headers: {
        "Content-Type": "application/json; charset=utf-8",
        "Cache-Control": "no-store",
      },
    });
  } catch {
    return NextResponse.json(
      {
        error:
          "履歴APIに接続できません。Python APIの起動を確認してください。",
      },
      { status: 503 }
    );
  }
}


