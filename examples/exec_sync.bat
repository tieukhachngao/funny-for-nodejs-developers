@echo off
setlocal EnableExtensions EnableDelayedExpansion
for /f "delims=" %%v in ('echo hello world') do set "output=%%v"
echo %output%
echo.
