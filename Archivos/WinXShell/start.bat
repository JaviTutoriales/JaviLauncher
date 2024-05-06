@echo off
color 6
cls
echo Start GeForce Now Shell [WinXShell]

B:
CD "B:\Space\WinXShell"
set shortcutsPath="%cd%\Shortcuts"
set desktopshortcutsPath="%cd%\DesktopShortcuts"
set wallpaperPath="%cd%\Default Wallpapers\wallpaper.jpg"

REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /f /v {374DE290-123F-4565-9164-39C4925E467B} /t REG_EXPAND_SZ /d "B:\Space"

del "C:\Users\kiosk\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\*.lnk"
xcopy /s %shortcutsPath% "C:\Users\kiosk\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar"
xcopy /s %desktopshortcutsPath% "%USERPROFILE%\Desktop"

start "" "%cd%\bin\switcheroo\nintendoswitch.exe"

echo Y|reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d %cd%\bin\shell\123.jpg" /f
CLS
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
CLS

taskkill gfndesktop

start "" "%cd%\bin\shell\explorer.exe"
start "" "%cd%\bin\shell\wallpaperchanger.exe"

taskkill explorer

start "" "%cd%\bin\shell\explorer.exe"
start "" "%cd%\bin\shell\wallpaperchanger.exe"

taskkill explorer
del %cd%\bin\shell\WinXShell.lua
start "" "%cd%\bin\shell\explorer.exe"
start "" "%cd%\bin\shell\wallpaperchanger.exe"

start "" "C:\Program Files\Classic Shell\ClassicStartMenu.exe"
start "" "C:\Program Files\Classic Shell\ClassicStartMenu.exe" -xml "%cd%\bin\shell\Menu_Settings.xml"

exit

