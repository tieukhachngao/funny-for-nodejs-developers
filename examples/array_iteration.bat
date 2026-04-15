@echo off
setlocal EnableExtensions EnableDelayedExpansion
set items=a b c
set /a i=0
for %%v in (%items%) do (echo !i! %%v& set /a i+=1)
echo [A B C]
echo [a c]
echo [A C]
