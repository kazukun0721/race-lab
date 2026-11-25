import { FIXED_MODEL_VERSION } from "@/lib/fixed-model";
import { NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";

export async function POST(request: Request) {
  const supabase = await createClient();
  const { data: { user }, error: authError } = await supabase.auth.getUser();
  if (authError || !user) return NextResponse.json({ error: "ログインが必要です" }, { status: 401 });

  let payload: unknown;
  try { payload = await request.json(); }
  catch { return NextResponse.json({ error: "JSONが不正です" }, { status: 400 }); }
  const predictionId = typeof payload === "object" && payload !== null && "prediction_id" in payload
    ? (payload as { prediction_id?: unknown }).prediction_id : null;
  if (typeof predictionId !== "string" || !/^[0-9a-f-]{36}$/i.test(predictionId))
    return NextResponse.json({ error: "prediction_idが不正です" }, { status: 400 });

  const { data: bet, error: betError } = await supabase.from("predictions")
    .select("id,user_id,sport,race_date,venue,race_number,bet_type,selection,odds,stake,race_id")
    .eq("id", predictionId).eq("user_id", user.id).maybeSingle();
  if (betError) return NextResponse.json({ error: "買い目の確認に失敗しました" }, { status: 500 });
  if (!bet) return NextResponse.json({ error: "買い目が見つかりません" }, { status: 404 });
  if (bet.sport !== "horse") return NextResponse.json({ error: "中央競馬の買い目が対象です" }, { status: 422 });

  // 同日・同場・同Rの実レースに限定する。
  const { data: races, error: raceError } = await supabase.from("horse_races")
    .select("id,race_date,venue,race_number,is_test,data_source")
    .eq("race_date", bet.race_date).eq("venue", bet.venue)
    .eq("race_number", bet.race_number).eq("is_test", false).neq("data_source", "synthetic").neq("data_source", "unknown")
    .limit(2);
  if (raceError) return NextResponse.json({ error: "レース照合に失敗しました" }, { status: 500 });
  if (!races || races.length !== 1 || (bet.race_id && bet.race_id !== races[0].id))
    return NextResponse.json({ error: "対応するレースを一意に特定できません。開催日・競馬場・R番号を確認してください" }, { status: 422 });
  const race = races[0];

  let adviceText: string;
  let modelVersion: string | null = null;
  if (bet.bet_type !== "単勝") {
    adviceText = `${bet.bet_type} ${bet.selection}：現在のモデルは単勝勝率のみを予測します。この券種の的中確率や期待値は算出できません。`;
  } else {
    const horseNumber = Number(bet.selection);
    if (!Number.isInteger(horseNumber) || horseNumber < 1 || horseNumber > 18)
      return NextResponse.json({ error: "単勝の馬番が不正です" }, { status: 422 });
    const { data: aiRows, error: aiError } = await supabase.from("ai_predictions")
      .select("win_probability,model_version,created_at,prediction_mode")
      .eq("race_id", race.id).eq("horse_number", horseNumber)
      .eq("model_version", FIXED_MODEL_VERSION)
      .order("created_at", { ascending: false }).limit(1);
    if (aiError) return NextResponse.json({ error: "AI予測の取得に失敗しました" }, { status: 500 });
    if (!aiRows || aiRows.length === 0 || aiRows[0].win_probability === null)
      return NextResponse.json({ error: "この馬番のAI予測がまだありません" }, { status: 422 });
    const p = Number(aiRows[0].win_probability);
    if (!Number.isFinite(p) || p < 0 || p > 1)
      return NextResponse.json({ error: "AI予測値の形式を確認してください" }, { status: 422 });
    modelVersion = aiRows[0].model_version;
    const percent = (p * 100).toFixed(1);
    const enteredOdds = bet.odds === null ? null : Number(bet.odds);
    if (enteredOdds !== null && (!Number.isFinite(enteredOdds) || enteredOdds <= 0))
      return NextResponse.json({ error: "登録オッズが不正です" }, { status: 422 });
    const roi = enteredOdds === null ? null : p * enteredOdds * 100;
    adviceText = `【固定モデルによる推定】単勝 ${horseNumber}番：AI推定勝率 ${percent}%（モデル ${modelVersion}）。` +
      (roi === null
        ? `オッズ未登録のため期待回収率は計算できません。損益分岐オッズは${p > 0 ? (1 / p).toFixed(2) : "算出不可"}倍です。`
        : `登録オッズ ${enteredOdds}倍、理論上の期待回収率 ${roi.toFixed(1)}%（期待収支 ${Math.round(Number(bet.stake) * (roi / 100 - 1))}円）。`)
      + " 登録オッズを使った推定値です。";
  }

  const { error: saveError } = await supabase.from("bet_ai_advice").insert({
    prediction_id: bet.id, user_id: user.id, advice_type: "pre_race_test",
    advice_text: adviceText, model_version: modelVersion,
  });
  if (saveError) return NextResponse.json({ error: `分析履歴の保存に失敗しました: ${saveError.message}` }, { status: 500 });
  return NextResponse.json({ advice: adviceText, race_id: race.id });
}
