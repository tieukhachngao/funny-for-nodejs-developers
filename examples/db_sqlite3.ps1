#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

& sqlite3 sqlite3.db "CREATE TABLE persons (name TEXT); INSERT INTO persons VALUES (alice),(bob),(charlie); SELECT rowid, name FROM persons;"
