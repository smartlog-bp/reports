@echo off
set hora_atual=%time:~0,2%
rem gtr significa maior
if %hora_atual% gtr 9 goto 
 RENAME D:\Apps\BOT_SIMPLEVIEW\reports\prints_qas\rec_moa_ITT_qas.png %date:~-4,4%%date:~-7,2%%date:~0,2%%time:~0,2%%time:~3,2%%time:~6,2%.png
rem Acertando a hora com 0 caso seja menor que 9
set hora_atual=0%time:~1,1%

set min_atual=%time:~3,2%

echo 
 RENAME D:\Apps\BOT_SIMPLEVIEW\reports\prints_qas\rec_moa_ITT_qas.png %date:~-4,4%%date:~-7,2%%date:~0,2%%hora_atual%%min_atual%00.png 