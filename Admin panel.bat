@echo off
chcp 65001 >nul
title ADMIN PANEL V 1.0
color 0b
setlocal enabledelayedexpansion


:menu
cls
color 0b
echo ========================================
echo       COMMAND CENTER - V 1.0
echo ========================================
echo.
echo (1) Run System Diagnostics
echo (2) LIVE SYSTEM USAGE
echo (3) CREATE QUICK NOTE (.txt)
echo (4) ACCESS HIDDEN VAULT (SECURE)
echo (5) JUKEBOX (MP3 PLAYER)
echo (6) VIDEO PLAYER (C:\videoo)
echo (7) Check System Logs (MATRIX)
echo (8) literally does nothing
echo (9) Log Out
echo (10) SYSTEM REPAIR (NEW)
echo (11) power down PC
echo (12) code
echo.
echo ========================================
set /p opt="ENTER PROTOCOL NUMBER: "

if "%opt%"=="1" goto diag
if "%opt%"=="2" goto usage
if "%opt%"=="3" goto note
if "%opt%"=="4" goto vault_check
if "%opt%"=="5" goto jukebox
if "%opt%"=="6" goto videoplayer
if "%opt%"=="7" goto logs
if "%opt%"=="8" goto secret
if "%opt%"=="9" goto logout
if "%opt%"=="10" goto repair
if "%opt%"=="11" goto shutdown
if "%opt%"=="12" goto notecode
:: If they type something else
echo [INVALID] Command not recognized.
timeout /t 2 >nul
goto menu

:repair
cls
color 0e
echo [SYSTEM] Launching Repair Protocols...
echo.
echo [INFO] Deleting Temp Files...
del /q /f /s %temp%\* >nul 2>&1
echo [INFO] Flushing DNS Cache...
ipconfig /flushdns >nul
echo [SUCCESS] System optimized.
pause
goto menu

:secret
cls
color 05
powershell -command "[console]::beep(200,500)"
echo ⠀⠀⠀⠀⠀⠀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⢀⣴⣿⣿⠿⣟⢷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⢸⣏⡏⠀⠀⠀⢣⢻⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⢸⣟⠧⠤⠤⠔⠋⠀⢿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⣿⡆⠀⠀⠀⠀⠀⠸⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠘⣿⡀⢀⣶⠤⠒⠀⢻⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⢹⣧⠀⠀⠀⠀⠀⠈⢿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⣿⡆⠀⠀⠀⠀⠀⠈⢿⣆⣠⣤⣤⣤⣤⣴⣦⣄⡀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⢀⣾⢿⢿⠀⠀⠀⢀⣀⣀⠘⣿⠋⠁⠀⠙⢇⠀⠀⠙⢿⣦⡀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⢀⣾⢇⡞⠘⣧⠀⢖⡭⠞⢛⡄⠘⣆⠀⠀⠀⠈⢧⠀⠀⠀⠙⢿⣦⡀⠀⠀⠀⠀
echo ⠀⠀⣠⣿⣛⣥⠤⠤⢿⡄⠀⠀⠈⠉⠀⠀⠹⡄⠀⠀⠀⠈⢧⠀⠀⠀⠈⠻⣦⠀⠀⠀
echo ⠀⣼⡟⡱⠛⠙⠀⠀⠘⢷⡀⠀⠀⠀⠀⠀⠀⠹⡀⠀⠀⠀⠈⣧⠀⠀⠀⠀⠹⣧⡀⠀
echo ⢸⡏⢠⠃⠀⠀⠀⠀⠀⠀⢳⡀⠀⠀⠀⠀⠀⠀⢳⡀⠀⠀⠀⠘⣧⠀⠀⠀⠀⠸⣷⡀
echo ⠸⣧⠘⡇⠀⠀⠀⠀⠀⠀⠀⢳⡀⠀⠀⠀⠀⠀⠀⢣⠀⠀⠀⠀⢹⡇⠀⠀⠀⠀⣿⠇
echo ⠀⣿⡄⢳⠀⠀⠀⠀⠀⠀⠀⠈⣷⠀⠀⠀⠀⠀⠀⠈⠆⠀⠀⠀⠀⠀⠀⠀⠀⣼⡟⠀
echo ⠀⢹⡇⠘⣇⠀⠀⠀⠀⠀⠀⠰⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡄⠀⣼⡟⠀⠀
echo ⠀⢸⡇⠀⢹⡆⠀⠀⠀⠀⠀⠀⠙⠁⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⢳⣼⠟⠀⠀⠀
echo ⠀⠸⣧⣀⠀⢳⡀⠀⠀⠀⠀⠀⠀⠀⡄⠀⠀⠀⠀⠀⠀⠀⢃⠀⢀⣴⡿⠁⠀⠀⠀⠀
echo ⠀⠀⠈⠙⢷⣄⢳⡀⠀⠀⠀⠀⠀⠀⢳⡀⠀⠀⠀⠀⠀⣠⡿⠟⠛⠉⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠈⠻⢿⣷⣦⣄⣀⣀⣠⣤⠾⠷⣦⣤⣤⡶⠟⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠈⠉⠛⠛⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo.
echo [SYSTEM] RESTRICTED OVERRIDE COMPLETE.
pause
goto menu

:videoplayer
cls
color 0e
echo [SYSTEM] Scanning C:\videoo...
set vcount=0
for %%F in ("C:\videoo\*.mp4" "C:\videoo\*.mkv" "C:\videoo\*.avi") do (
    set /a vcount+=1
    set "vtrack[!vcount!]=%%~nxF"
    set "vpath[!vcount!]=%%F"
    echo [!vcount!] %%~nxF
)
set /p vid_choice="Enter Video Number: "
if defined vpath[%vid_choice%] start "" "!vpath[%vid_choice%]!"
goto menu

:jukebox
cls
color 0d
set count=0
for %%F in ("C:\musicc\*.mp3") do (
    set /a count+=1
    set "track[!count!]=%%~nxF"
    set "fullpath[!count!]=%%F"
    echo [!count!] %%~nxF
)
set /p track_choice="Enter Track Number: "
if defined fullpath[%track_choice%] start wmplayer "!fullpath[%track_choice%]!"
goto menu

:note
cls
echo [QUICK NOTE] Type your message:
set /p msg="> "
echo %date% - %time%: %msg% >> Zeke_Notes.txt
pause
goto menu

:vault_check
cls
color 0c
set /p vaultpass="ENTER VAULT KEY: "
if "%vaultpass%"=="banana" goto vault
goto matrix

:vault
cls
color 0b
echo [L] Adalo [G] GO LIVE [Y] YT [T] Twitch [K] TikTok Lemon8 [B] Back
set /p v_opt="Action: "
if /I "%v_opt%"=="B" goto menu
if /I "%v_opt%"=="L" start https://www.adalo.com & goto vault
if /I "%v_opt%"=="G" (
    start https://www.tiktok.com/@mrgunpantzgt
    start https://www.twitch.tv/shrompee
    start https://www.youtube.com/@mr.gunpantz895
    goto vault
)
if /I "%v_opt%"=="Y" start https://www.youtube.com/@mr.gunpantz895 & goto vault
if /I "%v_opt%"=="T" start https://www.twitch.tv/shrompee & goto vault
if /I "%v_opt%"=="K" start https://www.tiktok.com/@mrgunpantzgt & goto vault
if /I "%v_opt%"=="8" start https://www.lemon8-app.com/@mrgunpantzgt & goto vault
goto vault

:diag
cls
for /L %%i in (1,1,10) do (echo Sector %%i: [OK] & timeout /t 1 >nul)
pause
goto menu

:usage
cls
powershell -command "Write-Host 'CPU LOAD: ' (Get-WmiObject win32_processor | Measure-Object -Property LoadPercentage -Average | Select-Object -ExpandProperty Average) '%%'"
powershell -command "$mem = Get-WmiObject Win32_OperatingSystem; [math]::Round((($mem.TotalVisibleMemorySize - $mem.FreePhysicalMemory) / $mem.TotalVisibleMemorySize) * 100) | foreach { Write-Host 'RAM LOAD: ' $_ '%%' }"
pause
goto menu

:logs
cls
color 04
:matrix
echo %random%%random%%random%%random%%random%
goto matrix

:logout
cls
set strikes=0
goto login
:shutdown
cls
color 0D
echo.
echo [system] shutdown starting
echo.
shutdown /s /f /t 10 /c "Zeke's admin panel system shutting down."
echo shutdown commant sent
pause
goto menu
:notecode
cls
color 0D
echo
echo ===========================
echo zekes notecode editor v1.0   
echo ===========================
echo.
set /p "filename=Enter script name:"
if not exist "%filename%.bat" echo @echo off >
"%filename%".bat"

start notepad.exe "%filename%.bat"

echo.[!] Editor lanched in a new window.
pause

goto menu

