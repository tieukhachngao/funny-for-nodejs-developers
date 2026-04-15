@echo off
setlocal EnableExtensions EnableDelayedExpansion
if exist sqlite3.db del sqlite3.db
for /f "tokens=1,2 delims=|" %%a in ('sqlite3 sqlite3.db "CREATE TABLE persons (name TEXT); INSERT INTO persons VALUES ('alice'),('bob'),('charlie'); SELECT rowid, name FROM persons;"') do echo %%a %%b
