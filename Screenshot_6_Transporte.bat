@echo off
start chrome http://simplefarm.bpbio.com.br/#/Home/Main?panelId=102
start /min nircmd.exe cmdwait 60000 savescreenshot "D:\Apps\BOT_SIMPLEVIEW\reports\prints\Transporte_TRP.png"
