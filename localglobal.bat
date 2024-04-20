@echo off

set /A globalvar = 2

SETLOCAL
set /A var = 23

ENDLOCAL
echo %globalvar%
echo %var%
echo %JAVA_HOME%