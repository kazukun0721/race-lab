
from datetime import datetime
from pathlib import Path
import json

# データ取得元を切り替えるための設定
DATA_SOURCE = "mock"

BASE_DIR = Path(__file__).resolve().parents[2]
DATA_DIR = BASE_DIR / "database"
DATA_DIR.mkdir(parents=True, exist_ok=True)


def fetch_races():
    if DATA_SOURCE == "mock":
        return [
            {
                "race_id": "test-001",
                "sport": "horse",
                "date": "2026-11-15",
                "venue": "東京",
                "race_number": 1,
                "horses": [
                    {"number": 1, "name": "テスト馬A"},
                    {"number": 2, "name": "テスト馬B"},
                    {"number": 3, "name": "テスト馬C"},
                ],
            }
        ]

    raise NotImplementedError(
        "実データ取得元は未接続です"
    )


def update_database():
    races = fetch_races()

    output = DATA_DIR / "races.json"
    output.write_text(
        json.dumps(races, ensure_ascii=False, indent=2),
        encoding="utf-8",
    )

    print(f"更新完了: {len(races)}レース")
    print(f"保存先: {output}")
    print(f"更新日時: {datetime.now().isoformat()}")


if __name__ == "__main__":
    update_database()
