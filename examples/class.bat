@echo off
setlocal EnableExtensions EnableDelayedExpansion
set "foo.item=bar"
echo %foo.item%
call :set_item qux
call :get_item
echo %item%
exit /b 0
:set_item
set "foo.item=%~1"
exit /b 0
:get_item
set "item=%foo.item%"
exit /b 0
