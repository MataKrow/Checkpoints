 @echo off
 set ProjName=BUILD
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
exit