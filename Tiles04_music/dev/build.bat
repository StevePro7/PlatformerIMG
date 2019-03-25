@echo off

REM folder2c ..\gfx gfx

REM echo Build gfx
sdcc -c -mz80 gfx.c

sdcc -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 main.c

sdcc -o output.ihx --Werror --opt-code-speed -mz80 --no-std-crt0 --data-loc 0xC000 ^
-Wl-b_BANK6=0x8000 ^
-Wl-b_BANK7=0x8000 ^
..\crt0\crt0_sms.rel main.rel ^
..\lib\SMSlib.lib ^
..\lib\PSGlib.rel ^
banks\bank6.rel ^
banks\bank7.rel ^
gfx.rel

ihx2sms output.ihx output.sms

copy output.sms ..
rem copy output.sms ..\asm
rem cd ..\asm
rem smsexamine.exe output.sms
rem cd ..\dev


del *.asm > nul
del *.ihx > nul
del *.lk > nul
del *.lst > nul
del *.map > nul
del *.noi > nul
rem del *.rel > nul
del *.sym > nul
	
C:\SEGA\Fusion\fusion.exe output.sms
REM C:\SEGA\Meka\mekaw.exe output.sms
rem java -jar C:\SEGA\Emulicious\emulicious.jar output.sms