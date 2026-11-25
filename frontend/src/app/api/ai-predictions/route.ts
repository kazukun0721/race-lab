
import { FIXED_MODEL_VERSION } from "@/lib/fixed-model";
import { NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";

export async function GET(request: Request) {
  const supabase = await createClient();

  // 1. ログイン確認
  const {
    data: { user },
    error: authError,
  } = await supabase.auth.getUser();

  if (authError || !user) {
    return NextResponse.json(
      { error: "ログインが必要です" },
      { status: 401 }
    );
  }

  // 2. race_id確認
  const { searchParams } = new URL(request.url);
  const raceId = searchParams.get("race_id");

  if (!raceId) {
    return NextResponse.json(
      { error: "race_idが必要です" },
      { status: 400 }
    );
  }

  // 3. レースの公開可否を確認
  const { data: race, error: raceError } = await supabase
    .from("horse_races")
    .select("id,is_test,data_source")
    .eq("id", raceId)
    .maybeSingle();

  if (raceError) {
    console.error("レース確認エラー:", raceError);

    return NextResponse.json(
      { error: "レース情報の確認に失敗しました" },
      { status: 500 }
    );
  }

  if (!race) {
    return NextResponse.json(
      { error: "対象レースが見つかりません" },
      { status: 404 }
    );
  }

  if (race.is_test !== false || race.data_source === "synthetic" || race.data_source === "unknown") {
    return NextResponse.json({ predictions: [] });
  }

  // 4. AI予想取得
  const { data, error } = await supabase
    .from("ai_predictions")
    .select("id,race_id,horse_number,prediction_mode,win_probability,odds_at_prediction,expected_return,recommendation,reason,model_version,created_at")
    .eq("race_id", raceId)
    .eq("model_version", FIXED_MODEL_VERSION)
    .order("created_at", { ascending: false })
    .order("horse_number", { ascending: true });

  if (error) {
    console.error("AI予想取得エラー:", error);

    return NextResponse.json(
      { error: "AI予想の取得に失敗しました" },
      { status: 500 }
    );
  }

  return NextResponse.json({
    predictions: (data ?? []).filter(row => row.win_probability == null ||
      (Number.isFinite(Number(row.win_probability)) && Number(row.win_probability) >= 0 && Number(row.win_probability) <= 1)),
  });
}
