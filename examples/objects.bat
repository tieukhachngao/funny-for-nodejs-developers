@echo off
setlocal EnableExtensions EnableDelayedExpansion
set "someProperties.foo=bar"
echo %someProperties.foo%
call :some_method foo
exit /b 0
:some_method
if "%~1"=="foo" echo %someProperties.foo%
exit /b 0
