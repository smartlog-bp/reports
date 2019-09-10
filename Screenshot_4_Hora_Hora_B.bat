@echo off
start chrome http://simplefarm.bpbio.com.br/#/Home/Main?panelId=138
start /min nircmd.exe cmdwait 40000 savescreenshot "D:\Apps\BOT_SIMPLEVIEW\reports\prints\Hora_Hora_ITB_B.png"

