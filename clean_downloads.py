from pathlib import Path
from time import strftime

archive_date = strftime("%Y%m")
downloads_path = Path("~/Downloads").expanduser()
archive_root = Path(downloads_path, "archive")
archive_path = Path(archive_root, archive_date)
archive_path.mkdir(exist_ok=True)
downloads = downloads_path.glob("*")

for f in downloads:
    if f != archive_root:
        f.rename(Path(archive_path, f.name))
        print(f"[{archive_date}] archived '{f.name}'")
