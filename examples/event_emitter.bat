@echo off
setlocal EnableExtensions EnableDelayedExpansion
call :emit my-event "hello world"
call :emit my-other-event "hello other world"
exit /b 0
:emit
echo %~2
exit /b 0
