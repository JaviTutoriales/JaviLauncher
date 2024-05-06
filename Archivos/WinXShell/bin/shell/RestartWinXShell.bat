@echo off
B:
cd "B:\Space\WinXShell"

taskkill /f /im explorer.exe

set wallpaperPath="B:\GFNTools\WinXShell\Default Wallpapers\win10classic.jpg"

start "" explorer.exe
start "" wallpaperchanger.exe