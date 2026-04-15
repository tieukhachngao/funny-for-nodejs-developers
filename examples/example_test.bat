@echo off
setlocal EnableExtensions EnableDelayedExpansion
call :sum 1 1
if not "%result%"=="2" exit /b 1
call :sum 2 3
if not "%result%"=="5" exit /b 1
call :sum 5 5
if not "%result%"=="10" exit /b 1
exit /b 0
:sum
set /a result=%~1 + %~2
exit /b 0
