@echo off
X Project

echo                                                         [1] Aplicar alterações
echo. 
echo. 
echo                                                         [2] Reverter alterações
SET /P choice=SELECT:

IF /I "%choice%"=="1" Goto 1
IF /I "%choice%"=="2" Goto 2
IF /I "%choice%"=="3" Goto 3
:1
sc config GraphicsPerfSvc start= Disabled
net stop GraphicsPerfSvc

:2
sc config GraphicsPerfSvc start= demand
net start GraphicsPerfSvc
cls

pause