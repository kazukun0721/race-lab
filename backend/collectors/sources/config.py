
import os
from pathlib import Path

from dotenv import load_dotenv

ENV_PATH = Path(__file__).resolve().parents[2] / ".env"
load_dotenv(ENV_PATH)

# 実データの取得元が決まるまでは無効
DATA_SOURCE = os.getenv("JRA_DATA_SOURCE", "disabled")

# 友人への配信許諾が確認できるまでは無効
REDISTRIBUTION_ALLOWED = (
    os.getenv("JRA_REDISTRIBUTION_ALLOWED", "false").lower()
    == "true"
)


def validate_data_source():
    if DATA_SOURCE == "disabled":
        raise RuntimeError(
            "JRA実データの取得元が未設定です。"
        )

    if not REDISTRIBUTION_ALLOWED:
        raise RuntimeError(
            "友人へのデータ配信許諾が未確認です。"
        )
