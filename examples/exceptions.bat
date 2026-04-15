@echo off
setlocal EnableExtensions EnableDelayedExpansion
call :foo 2> "%temp%\err.txt"
if errorlevel 1 (set /p err=<"%temp%\err.txt"& <nul set /p dummy=caught exception: !err!)
exit /b 0
:foo
echo my exception 1>&2
exit /b 1
