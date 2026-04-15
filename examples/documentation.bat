@echo off
setlocal EnableExtensions EnableDelayedExpansion
rem Person is represented by a name variable.
call :new_person bob
call :person_get_name
exit /b 0
:new_person
set "person.name=%~1"
exit /b 0
:person_get_name
echo %person.name%
exit /b 0
