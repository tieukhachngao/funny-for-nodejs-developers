@echo off
setlocal EnableExtensions EnableDelayedExpansion
start /b cmd /c "timeout /t 1 /nobreak >nul & echo resolved: foo"
timeout /t 1 /nobreak >nul
echo [resolved: A resolved: B resolved: C]
