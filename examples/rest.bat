@echo off
setlocal EnableExtensions EnableDelayedExpansion
call :sum 1 2 3 4 5
echo %total%
exit /b 0
:sum
set /a total=0
:sum_loop
if "%~1"=="" exit /b 0
set /a total+=%~1
shift
goto sum_loop
