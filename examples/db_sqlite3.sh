#!/usr/bin/env bash
set -euo pipefail

db=./sqlite3.db
rm -f "$db"

sqlite3 "$db" 'CREATE TABLE persons (name TEXT);'

for name in alice bob charlie; do
  sqlite3 "$db" "INSERT INTO persons VALUES ('$name');"
done

sqlite3 "$db" 'SELECT rowid, name FROM persons;' | tr '|' ' '
