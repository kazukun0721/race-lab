
import { NextResponse } from "next/server";
import { readFile } from "node:fs/promises";
import path from "node:path";

export async function GET() {
  try {
    const filePath = path.resolve(
      process.cwd(),
      "..",
      "database",
      "races.json"
    );

    const content = await readFile(filePath, "utf-8");
    const races = JSON.parse(content);

    if (!Array.isArray(races)) {
      throw new Error("Invalid race data");
    }

    return NextResponse.json({
      success: true,
      count: races.length,
      races,
    });
  } catch {
    return NextResponse.json(
      {
        success: false,
        error: "レースデータを読み込めませんでした",
      },
      { status: 500 }
    );
  }
}
