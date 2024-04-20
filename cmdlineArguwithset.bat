@echo off

set /p message = hello world
set /A x = %1
set /A y = %2
set /A z = %x% + %y%
echo %message%
echo %x%
echo %y%
echo %z%