@echo off
setlocal EnableExtensions EnableDelayedExpansion
timeout /t 1 /nobreak >nul
echo hello bob
timeout /t 1 /nobreak >nul
echo failed 1>&2
