@echo off
setlocal EnableExtensions EnableDelayedExpansion
set "file=test.txt"
copy nul "%file%" >nul
<nul set /p dummy=hello world. > "%file%"
set /p content=<"%file%"
echo %content%
del "%file%"
