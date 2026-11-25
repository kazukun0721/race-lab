import { NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";

export async function GET() {
  const supabase = await createClient();

  const { data: { user }, error: authError } =
    await supabase.auth.getUser();

  if (authError || !user) {
    return NextResponse.json(
      { success: false, error: "ログインが必要です" },
      { status: 401 }
    );
  }

  const today = new Date().toLocaleDateString("sv-SE", {
    timeZone: "Asia/Tokyo",
  });

  const { data: rows, error } = await supabase
    .from("horse_races")
    .select(
      "id,race_date,venue,race_number,race_name,is_test,data_source,horse_entries(horse_number,horse_name)"
    )
    .eq("is_test", false)
    .gte("race_date", today)
    .order("race_date", { ascending: true })
    .order("venue", { ascending: true })
    .order("race_number", { ascending: true })
    .limit(500);

  if (error) {
    console.error("レース取得失敗", error);
    return NextResponse.json(
      { success: false, error: "レースデータを取得できませんでした" },
      { status: 500 }
    );
  }

  const races = (rows ?? []).map((r) => ({
    race_id: r.id,
    sport: "horse",
    date: r.race_date,
    venue: r.venue,
    race_number: r.race_number,
    horses: (r.horse_entries ?? [])
      .map((h) => ({
        number: h.horse_number,
        name: h.horse_name,
      }))
      .sort((a, b) => (a.number ?? 999) - (b.number ?? 999)),
  }));

  return NextResponse.json({
    success: true,
    count: races.length,
    races,
  });
}
