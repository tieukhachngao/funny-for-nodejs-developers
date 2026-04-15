#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

Remove-Item -Force sqlite3.db -ErrorAction SilentlyContinue
& sqlite3 sqlite3.db "CREATE TABLE persons (name TEXT); INSERT INTO persons VALUES ('alice'),('bob'),('charlie'); SELECT rowid, name FROM persons;" |
  ForEach-Object { $_ -replace "\|", " " }
