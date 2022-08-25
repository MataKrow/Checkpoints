@echo off

REM sets some initial Variables.
REM remove the "." from ".gzdoom.exe" to allow it to work with your build of gzdoom
set GZPATH=D:\Doom\SourcePorts\Z-Based\GZDoom
set ZANDROPATH=D:\Doom\SourcePorts\Multiplayer\Zandronum
set ProjName=Checkpoints




:choice
set /P c="1-GZDOOM 2-ZANDRONUM 3-GZDOOM Multiplayer test : "
echo.
if /I "%c%" EQU "1" goto :opt1
if /I "%c%" EQU "2" goto :opt2
if /I "%c%" EQU "3" goto :opt3
if /I "%c%" EQU "0" exit
goto :choice

:opt1
@echo off

echo Ready to Start.
echo Step 1: Packing
echo Packing...
cd src
..\7z a -r -x!src\ -x!acs\*.acs -x!maps\*.o -x!maps\*.acs -x!dialogs\ -x!*.dbs -x!*.bat -x!*.bak -x!*.backup* -x!*.db  -ssw -tzip ..\%ProjName%n.pk3 "*"
echo Done packing.
echo Step 2: Replace old version
echo Replacing old version.
cd ..
del %ProjName%.pk3
ren %ProjName%n.pk3 %ProjName%.pk3
echo Done replacing.
echo Done.

cd %GZPATH%
REM Runs the project
.gzdoom.exe -noautoload +vid_fullscreen 0 +idmypos 1 +vid_fps 1 +am_cheat 2 +noise 0 +developer 2 +sv_cheats 1 -stdout -file %~dp0%ProjName%.pk3 %~dp0DOOMTEST.wad -file %~dp0RadiusDebug.pk3
exit

:opt2

 @echo off
echo Ready to Start.
echo Step 1: Packing
echo Packing...
cd src
..\7z a -r -x!src\ -x!acs\*.acs -x!maps\*.o -x!maps\*.acs -x!dialogs\ -x!*.dbs -x!*.bat -x!*.bak -x!*.backup* -x!*.db  -ssw -tzip ..\%ProjName%n.pk3 "*"
echo Done packing.
echo Step 2: Replace old version
echo Replacing old version.
cd ..
del %ProjName%.pk3
ren %ProjName%n.pk3 %ProjName%.pk3
echo Done replacing.
echo Done.

cd %ZANDROPATH%
REM Runs the project
Zandronum -noautoload +vid_fullscreen 0 +idmypos 1 +vid_fps 1 +am_cheat 2 +noise 0 +developer 2 +sv_cheats 1 -stdout -file %~dp0%ProjName%.pk3 %~dp0DOOMTEST.wad
exit

:opt3

 @echo off
echo Ready to Start.
echo Step 1: Packing
echo Packing...
cd src
..\7z a -r -x!src\ -x!acs\*.acs -x!maps\*.o -x!maps\*.acs -x!dialogs\ -x!*.dbs -x!*.bat -x!*.bak -x!*.backup* -x!*.db  -ssw -tzip ..\%ProjName%n.pk3 "*"
echo Done packing.
echo Step 2: Replace old version
echo Replacing old version.
cd ..
del %ProjName%.pk3
ren %ProjName%n.pk3 %ProjName%.pk3
echo Done replacing.
echo Done.

cd %GZPATH%
start .gzdoom.exe -join DESKTOP-L61LU53 +name Player2 -noautoload +vid_fullscreen 0 +developer 2 +idmypos 1 +vid_fps 1 +map NULL +am_cheat 2 +noise 0 +sv_cheats 1 -noidle +vid_defwidth 800 +vid_defheight 450 +win_x 864 +win_y 523 -file %ProjName%.pk3 %~dp0DOOMTEST.wad
.gzdoom.exe -host 2 +name Player -noautoload  +vid_fullscreen 0 +developer 2 +idmypos 1 +vid_fps 1 +am_cheat 2 +noise 0 +map NULL +sv_cheats 1 -noidle +vid_defwidth 800 +vid_defheight 450 -0 +win_x 41 +win_y 523 -file %ProjName%.pk3 %~dp0DOOMTEST.wad
exit