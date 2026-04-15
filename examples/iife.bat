@echo off
setlocal EnableExtensions EnableDelayedExpansion
call :anonymous bob
exit /b 0
:anonymous
echo hello %~1
exit /b 0
