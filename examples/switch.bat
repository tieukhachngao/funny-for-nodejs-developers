@echo off
setlocal EnableExtensions EnableDelayedExpansion
set "value=b"
if "%value%"=="a" (echo A) else if "%value%"=="b" (echo B) else if "%value%"=="c" (echo C) else echo first default
echo B - falling through
echo C - falling through
echo second default
