@echo off
setlocal EnableExtensions EnableDelayedExpansion
call "%~dp0getter_batch\index.bat" %*
endlocal
exit /b 0
