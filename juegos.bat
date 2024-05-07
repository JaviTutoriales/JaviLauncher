@echo off
title JaviJuegos 0.1
:menu
echo ------- JAVIJUEGOS -------
echo.
echo Menu:
echo 1. Roblox
echo 2. Salir
echo.
set /p choice=Elige una opcion: 
if "%choice%"=="1" goto option1
if "%choice%"=="2" exit

:option1
Archivos\wget.exe -O roblox.exe --content-disposition -L https://www.roblox.com/download/client?os=win
start /wait roblox.exe
del roblox.exe
exit