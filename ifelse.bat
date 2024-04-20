@echo off
set v1=hi!!
set v2=bye!!
echo Press 1 to say HI!
echo Press 2 to say BYE!
set /p userinput=
if %userinput%==1 echo %v1%
if %userinput%==2 echo %v2%
pause