@echo off
setlocal EnableExtensions EnableDelayedExpansion
call :foo true 2> "%temp%\err.txt"
if errorlevel 1 (set /p err=<"%temp%\err.txt"& echo caught error: !err!)
exit /b 0
:foo
if "%~1"=="true" (echo my error 1>&2& exit /b 1)
exit /b 0
