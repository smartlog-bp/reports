@echo off
start chrome http://simplefarm.bpbio.com.br/#/Home/Main?panelId=131
start /min nircmd.exe cmdwait 30000 savescreenshot "D:\Apps\BOT_SIMPLEVIEW\reports\prints\Atraso_ITB.png"