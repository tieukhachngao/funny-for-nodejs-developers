@echo off
setlocal EnableExtensions EnableDelayedExpansion
set "key=foo"
set "value=bar"
echo %key% %value%
call :read_obj
echo %key% %value%
exit /b 0
:read_obj
set "key=foo"
set "value=bar"
exit /b 0
