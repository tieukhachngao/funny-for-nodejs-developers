@echo off
setlocal EnableExtensions EnableDelayedExpansion
echo stack trace is available with errorlevel and labels in Batch
call :foo
if errorlevel 1 echo failed at :foo
exit /b 0
:foo
exit /b 1
