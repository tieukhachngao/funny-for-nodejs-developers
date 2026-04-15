@echo off
setlocal EnableExtensions EnableDelayedExpansion
for /l %%i in (0,1,3) do (timeout /t 1 /nobreak >nul& echo called %%i)
