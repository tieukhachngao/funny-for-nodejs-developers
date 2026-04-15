@echo off
setlocal EnableExtensions EnableDelayedExpansion
set /a i=0
:loop
if %i% GTR 5 goto done
echo %i%
set /a i+=1
goto loop
:done
