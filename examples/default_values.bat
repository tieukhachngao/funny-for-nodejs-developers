@echo off
setlocal EnableExtensions EnableDelayedExpansion
call :greet
call :greet bob
exit /b 0
:greet
set "name=%~1"
if "%name%"=="" set "name=stranger"
echo hello %name%
exit /b 0
