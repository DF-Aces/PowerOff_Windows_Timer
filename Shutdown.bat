@echo off
title Shutdown
color C





                               
 

echo.

echo                               %Time:~0,5% 
echo.
echo Ce programme sert a l'extinction,au redemarage ou a l'hibernation de votre pc
echo ------------------------------------------------------------------------------
echo.
:boucle
echo 0.Souhaitez-vous l'eteindre ?
echo 1.Souhaitez-vous le redemarer ?
echo 2.Annuler une programmation
echo Repondez par [0/1/2]
set /p var=

if %var% == 2 ( goto stop )
if %var% == 0 ( set se=s )
if %var% == 1 ( set se=r )
if %var% gtr 2 ( 
goto boucle)
cls
echo Saisissez les heures :
set /p heures=
:fal
cls
echo Saisissez les minutes (Pas plus de 59 minutes evidemment) :
set /p minute=
if %minute% gtr 59 ( goto fal ) 
if %minute% lss 10 ( set  minute=0%minute%)
if %heures% lss 10 ( set  heures=0%heures%)
if %var% == 0 ( set Ex=Extinction )
if %var% == 1 ( set Ex=Redemarrage )
set /a H=(%heures%*3600)+(%minute%*60)
shutdown.exe /%se% /t %H% /c "%Ex% dans %heures%h%minute%min"
cls


echo ---------------------------------------------------------------------------------
echo --------------------%Ex% dans %heures%h%minute%min------------------------------
echo ---------------------------------------------------------------------------------

:stop
if %var%==2 (
cls
shutdown.exe /a 
echo.
echo Annulation de la programmation 
echo.
)


pause > nul