@ECHO off
Rem Noita Save/Backup script
Rem Created by https://github.com/Killer-Kat, inspired by this reddit post https://www.reddit.com/r/noita/comments/da5pwb/scripts_to_backuprestore_your_saves/

title Noita Save Script
color 0D
Echo Noitia Saving Script, Created by Killer-Kat.

Rem this part gets the user input to select the task.
:selection
Echo Options: 1. Save 2. Restore 3. Exit
set /p input="Select option: "

if "%input%"=="1" ( goto ONE)
if "%input%"=="2" ( goto TWO)
if "%input%"=="3" ( exit)
if /I "%input%"=="secret" ( goto Secret ) else (
echo Error invalid selection.
goto selection )

:ONE
rmdir %userprofile%\AppData\LocalLow\Nolla_Games_Noita\backup /s /q
mkdir %userprofile%\AppData\LocalLow\Nolla_Games_Noita\backup
xcopy %userprofile%\AppData\LocalLow\Nolla_Games_Noita\save00\*.* %userprofile%\AppData\LocalLow\Nolla_Games_Noita\backup\*.* /e /y /i
cls
Echo Backup completed.
goto selection

:TWO
mkdir %userprofile%\AppData\LocalLow\Nolla_Games_Noita\save00
xcopy %userprofile%\AppData\LocalLow\Nolla_Games_Noita\backup\*.* %userprofile%\AppData\LocalLow\Nolla_Games_Noita\save00\*.* /e /y /i
cls
echo Backup Restored.
goto selection

:Secret
cls
Rem this for loop changes the color of the text while keeping the background the same for a rainbow effect.
for /l %%x in (1, 1, 25) do (
 ECHO YOU HAVE ANGERED THE GODS
 color 0C
 timeout /t 1 /nobreak >nul
 color 0E
 timeout /t 1 /nobreak >nul
 color 0a
 timeout /t 1 /nobreak >nul
 color 0b
 timeout /t 1 /nobreak >nul
 color 09
 timeout /t 1 /nobreak >nul
 color 0d
 timeout /t 1 /nobreak >nul
)
cls 
goto selection
