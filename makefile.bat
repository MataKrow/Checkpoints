@echo off
set ProjName=Checkpoints
set SevenZipPath=..\tools\7z
set ACCPath=..\tools\acc


:Options
cls
set /P c="1-Build PK3 2-Compile ACS 0-Exit: "
echo.
if /I "%c%" EQU "1" goto :MakePK3
if /I "%c%" EQU "2" goto :CompileACS
if /I "%c%" EQU "0" exit

if "%c%"=="" (
    goto :Options
)

:MakePK3
pushd src
%SevenZipPath%\7z a -r -mx=9 -x!src\ -x!acs\*.acs -x!maps\*.o -x!maps\*.acs -x!dialogs\ -x!*.dbs -x!*.bat -x!*.bak -x!*.backup* -x!*.db -ssw -tzip ..\%ProjName%.tmp "*"
popd
del %ProjName%.pk3
ren %ProjName%.tmp %ProjName%.pk3
exit

:CompileACS
pushd src
%ACCPath%\acc .\acs\acs_src\FLOPPY.acs .\acs\FLOPPY.o
%ACCPath%\acc .\acs\acs_src\SPPRESET.acs .\acs\SPPRESET.o
popd
pause
exit