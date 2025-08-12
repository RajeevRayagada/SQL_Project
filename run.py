import sqlite3
from pathlib import Path

BASE_DIR = Path(__file__).parent
DB_PATH = BASE_DIR / "library.db"

def execute_sql(file_path):
    with open(file_path, "r", encoding="utf-8") as f:
        sql = f.read()
    with sqlite3.connect(DB_PATH) as conn:
        conn.executescript(sql)

if __name__ == "__main__":
    print("[1/3] Applying schema...")
    execute_sql(BASE_DIR / "schema.sql")

    print("[2/3] Inserting seed data...")
    execute_sql(BASE_DIR / "seed.sql")

    print("[3/3] Running queries...")
    with sqlite3.connect(DB_PATH) as conn:
        cursor = conn.executescript((BASE_DIR / "queries.sql").read_text(encoding="utf-8"))
        # If queries.sql contains SELECTs, print results
        for row in cursor:
            print(row)

    print("✅ All steps complete. Database at:", DB_PATH)
