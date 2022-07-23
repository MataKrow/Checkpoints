@echo off
del .\bin\game-files\gzdoom\BUILD.ipk3
REM sets the location of gzdoom.


:choice
set /P c="0-GZDOOM 1-ZANDRONUM 2-GZDOOM Multiplayer test :"
echo.
if /I "%c%" EQU "0" goto :opt0
if /I "%c%" EQU "1" goto :opt1
if /I "%c%" EQU "2" goto :opt2
goto :choice

:opt0
@echo off
 set ProjName=BUILD
 echo Ready to Start.

 echo Step 1: Packing
 echo Packing...
 cd src
 ..\7z a -r -x!src\ -x!acs\*.acs -x!maps\*.o -x!maps\*.acs -x!dialogs\ -x!*.dbs -x!*.bat -x!*.bak -x!*.backup* -x!*.db  -ssw -tzip ..\%ProjName%n.ipk3 "*"
 echo Done packing.

 echo Step 2: Replace old version
 echo Replacing old version.
 cd ..
 del %ProjName%.ipk3
 ren %ProjName%n.ipk3 %ProjName%.ipk3
 echo Done replacing.
move .\BUILD.ipk3 D:\Doom\SourcePorts\GZDoom
cd D:\Doom\SourcePorts\GZDoom
REM Runs the project
.gzdoom.exe -noautoload +vid_fullscreen 0 +idmypos 1 +vid_fps 1 +am_cheat 2 +noise 0 +developer 2 +sv_cheats 1 -stdout -file %ProjName%.ipk3 -file RadiusDebug.pk3
exit
del D:\Doom\SourcePorts\GZDoom\%ProjName%.ipk3
exit

:opt1
 @echo off
 set ProjName=BUILD
 echo Ready to Start.

 echo Step 1: Packing
 echo Packing...
 cd src
 ..\7z a -r -x!src\ -x!acs\*.acs -x!maps\*.o -x!maps\*.acs -x!dialogs\ -x!*.dbs -x!*.bat -x!*.bak -x!*.backup* -x!*.db  -ssw -tzip ..\%ProjName%n.ipk3 "*"
 echo Done packing.

 echo Step 2: Replace old version
 echo Replacing old version.
 cd ..
 del %ProjName%.ipk3
 ren %ProjName%n.ipk3 %ProjName%.ipk3
 echo Done replacing.
move .\BUILD.ipk3 D:\Doom\SourcePorts\Zandronum
cd D:\Doom\SourcePorts\Zandronum
REM Runs the project
Zandronum -noautoload +vid_fullscreen 0 +idmypos 1 +vid_fps 1 +am_cheat 2 +noise 0 +developer 2 +sv_cheats 1 -stdout -file %ProjName%.ipk3 -file RadiusDebug.pk3
exit
del D:\Doom\SourcePorts\Zandronum\%ProjName%.ipk3
exit

:opt2
 @echo off
 set ProjName=BUILD
 echo Ready to Start.

 echo Step 1: Packing
 echo Packing...
 cd src
 ..\7z a -r -x!src\ -x!acs\*.acs -x!maps\*.o -x!maps\*.acs -x!dialogs\ -x!*.dbs -x!*.bat -x!*.bak -x!*.backup* -x!*.db  -ssw -tzip ..\%ProjName%n.ipk3 "*"
 echo Done packing.

 echo Step 2: Replace old version
 echo Replacing old version.
 cd ..
 del %ProjName%.ipk3
 ren %ProjName%n.ipk3 %ProjName%.ipk3
 echo Done replacing.
move .\BUILD.ipk3 D:\Doom\SourcePorts\GZDoom
cd D:\Doom\SourcePorts\GZDoom
start .gzdoom.exe -host 2 +name Player -noautoload  +vid_fullscreen 0 +developer 2 +idmypos 1 +vid_fps 1 +am_cheat 2 +noise 0 +map NULL +sv_cheats 1 -noidle +vid_defwidth 800 +vid_defheight 450 -0 +win_x 41 +win_y 523
start .gzdoom.exe -join DESKTOP-L61LU53 +name Player2 -noautoload +vid_fullscreen 0 +developer 2 +idmypos 1 +vid_fps 1 +map NULL +am_cheat 2 +noise 0 +sv_cheats 1 -noidle +vid_defwidth 800 +vid_defheight 450 +win_x 864 +win_y 523
exit