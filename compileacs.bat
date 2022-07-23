rem @echo off
cd .\acc
acc D:\GitHub\Checkpoints\src\acs_src\FLOPPY.acs D:\GitHub\Checkpoints\src\acs\FLOPPY.o
acc D:\GitHub\Checkpoints\src\acs_src\SPPRESET.acs D:\GitHub\Checkpoints\src\acs\SPPRESET.o
timeout /t 3 /nobreak >nul