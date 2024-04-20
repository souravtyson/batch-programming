@echo off
set /a v = 1
echo %v%
:add
set /a v = %v% + 10
echo %v%
pause
goto add