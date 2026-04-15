@echo off
setlocal
set "name=%~1"
if "%name%"=="" set "name=bob"
echo hello %name%
endlocal
exit /b 0
