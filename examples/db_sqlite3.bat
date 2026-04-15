@echo off
setlocal EnableExtensions EnableDelayedExpansion
sqlite3 sqlite3.db "CREATE TABLE persons (name TEXT); INSERT INTO persons VALUES ('alice'),('bob'),('charlie'); SELECT rowid, name FROM persons;"
