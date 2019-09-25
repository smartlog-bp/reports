@echo off
start chrome http://simplefarm.bpbio.com.br/#/Home/Main?panelId=103
start /min nircmd.exe cmdwait 25000 savescreenshot "D:\Apps\BOT_SIMPLEVIEW\reports\prints\Transporte_ITT.png"
