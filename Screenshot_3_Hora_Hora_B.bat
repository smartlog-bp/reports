@echo off
start chrome http://simplefarm.bpbio.com.br/#/Home/Main?panelId=134
start /min nircmd.exe cmdwait 31000 savescreenshot "D:\Apps\BOT_SIMPLEVIEW\reports\prints\Hora_Hora_ITT_B.png"

