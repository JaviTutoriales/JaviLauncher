@echo off
title JaviLauncher 0.3
cls
:menu
echo ------- JAVILAUNCHER -------
echo.
echo Menu:
echo 1. Escritorio
echo 2. Anti-Crasher
echo 3. Explorer++
echo 4. Juegos
echo 5. Salir
echo.
echo =====================================================
echo  JaviLauncher es un simple launcher para geforce now
echo =====================================================
echo.
set /p choice=Elige una opcion: 
if "%choice%"=="1" goto option1
if "%choice%"=="2" goto option2
if "%choice%"=="3" goto option3
if "%choice%"=="4" goto option4
if "%choice%"=="5" exit
echo Opcion invalida. Intentalo de nuevo
goto menu

:option1
start Archivos/WinXShell/start.bat
cls
goto menu

:option2
start Archivos/UadSol.exe
cls
goto menu

:option3
start Archivos/runthis++.exe
cls
goto menu

:option4
start juegos.bat
cls
goto menu
