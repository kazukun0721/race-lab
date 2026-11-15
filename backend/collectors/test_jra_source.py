
from datetime import date

from sources.jra_source import get_jra_races


races = get_jra_races(date.today())

for race in races:
    print(
        race["race_date"],
        race["venue"],
        f'{race["race_number"]}R',
        race["race_name"],
    )

    for horse in race["entries"]:
        print(
            " ",
            horse["horse_number"],
            horse["horse_name"],
            horse["jockey_name"],
        )
