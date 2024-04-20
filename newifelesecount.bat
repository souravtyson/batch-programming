::@echo off
::set value=1
:::top
::echo %value%
::if %value% leq 50 ( set /a value = %value% + 1 )
::if %value% gtr 50 goto outfromtop
::goto top
:::outfromtop
::pause

@echo off
set value=1
:top
echo %value%
set /a value = %value% + 1
if %value%==50 goto bottom

goto top
:bottom
echo %value%
set /a value = %value% - 1
if %value%==1 goto top

goto bottom