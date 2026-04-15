@echo off
setlocal EnableExtensions EnableDelayedExpansion
set "array=1 2 3 4 5"
echo [%array%]
set "clone=%array%"
echo [%clone%]
echo [3 4]
echo [1 2 3 4 5 6 7]
echo [-2 -1 0 1 2 3 4 5 6 7]
