@echo off
setlocal EnableExtensions EnableDelayedExpansion
set "array0=1"
set "array1=2"
set /a length=2
if defined array0 echo array exists
if %length%==2 (echo length is 2) else if %length%==1 (echo length is 1) else echo length is other
set "isOddLength=no"
set /a mod=length %% 2
if %mod%==1 set "isOddLength=yes"
echo %isOddLength%
