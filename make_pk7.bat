 @echo off
 set ProjName=Checkpoints
 echo Ready to Start.

 echo Step 1: Packing
 echo Packing...
 cd src
 ..\7z a -r -x!src\ -x!acs\*.acs -x!maps\*.o -x!maps\*.acs -x!dialogs\ -x!*.dbs -x!*.bat -x!*.bak -x!*.backup* -x!*.db  -ssw -t7z ..\%ProjName%n.pk7 "*"
 echo Done packing.

 echo Step 2: Replace old version
 echo Replacing old version.
 cd ..
 del %ProjName%.pk7
 ren %ProjName%n.pk7 %ProjName%.pk7
 echo Done replacing.

 echo Done.
exit