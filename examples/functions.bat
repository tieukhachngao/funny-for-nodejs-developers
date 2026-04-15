@echo off
setlocal EnableExtensions EnableDelayedExpansion
call :add 2 3
echo %result%
exit /b 0
:add
set /a result=%~1 + %~2
exit /b 0
