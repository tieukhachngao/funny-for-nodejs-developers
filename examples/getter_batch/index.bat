@echo off
setlocal
set "name=%~1"
if "%name%"=="" set "name=bob"
<nul set /p dummy=hello %name%
endlocal
