@echo off
setlocal EnableExtensions EnableDelayedExpansion
call "%~dp0getter_batch\index.bat" bob
endlocal
exit /b 0
