
from datetime import date
from pathlib import Path
import os

from dotenv import load_dotenv
from supabase import create_client

from sources.jra_source import get_jra_races


# backend/.env を読み込む
ENV_PATH = Path(__file__).resolve().parents[1] / ".env"
load_dotenv(ENV_PATH)

SUPABASE_URL = os.getenv("SUPABASE_URL")
SUPABASE_KEY = os.getenv("SUPABASE_SERVICE_ROLE_KEY")

if not SUPABASE_URL or not SUPABASE_KEY:
    raise RuntimeError(
        "SupabaseのURLまたは秘密鍵が設定されていません"
    )

supabase = create_client(SUPABASE_URL, SUPABASE_KEY)


def sync_jra(target_date: date):
    races = get_jra_races(target_date)

    for race in races:
        race_data = {
            "race_date": race["race_date"],
            "venue": race["venue"],
            "race_number": race["race_number"],
            "race_name": race.get("race_name"),
            "distance": race.get("distance"),
            "surface": race.get("surface"),
        }

        result = (
            supabase.table("horse_races")
            .upsert(
                race_data,
                on_conflict="race_date,venue,race_number",
            )
            .execute()
        )

        race_id = result.data[0]["id"]

        entries = []

        for horse in race["entries"]:
            entries.append(
                {
                    "race_id": race_id,
                    "horse_number": horse["horse_number"],
                    "horse_name": horse["horse_name"],
                    "jockey_name": horse.get("jockey_name"),
                }
            )

        if entries:
            (
                supabase.table("horse_entries")
                .upsert(
                    entries,
                    on_conflict="race_id,horse_number",
                )
                .execute()
            )

        print(
            f'登録完了：{race["venue"]} '
            f'{race["race_number"]}R '
            f'出走馬{len(entries)}頭'
        )




if __name__ == "__main__":
    import sys

    if "--test" in sys.argv:
        if "--confirm-test-write" not in sys.argv:
            print("テストデータの登録には追加確認が必要です。")
            print("--confirm-test-write を指定してください。")
            sys.exit(1)

        print("【テストモード】架空データを登録します")
        sync_jra(date.today())

    else:
        from sources.config import validate_data_source

        validate_data_source()
        print("実データ取得処理は未実装です。登録しません。")
