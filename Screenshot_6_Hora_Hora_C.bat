@echo off
start chrome http://simplefarm.bpbio.com.br/#/Home/Main?panelId=127
start /min nircmd.exe cmdwait 40000 savescreenshot "D:\Apps\BOT_SIMPLEVIEW\reports\prints\Hora_Hora_TRP_C.png"

