
from datetime import date


def get_jra_races(target_date: date) -> list[dict]:
    """
    JRAレース情報の取得窓口。

    将来、利用許諾を確認したデータ取得元に
    差し替える。
    """

    # 現段階では架空のテストデータを返す
    return [
        {
            "race_date": target_date.isoformat(),
            "venue": "東京",
            "race_number": 1,
            "race_name": "RACE LAB テストレース",
            "distance": 1600,
            "surface": "芝",
            "entries": [
                {
                    "horse_number": 1,
                    "horse_name": "テストホースA",
                    "jockey_name": "騎手A",
                },
                {
                    "horse_number": 2,
                    "horse_name": "テストホースB",
                    "jockey_name": "騎手B",
                },
                {
                    "horse_number": 3,
                    "horse_name": "テストホースC",
                    "jockey_name": "騎手C",
                },
            ],
        }
    ]
