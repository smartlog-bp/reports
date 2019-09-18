@echo off
start chrome http://simplefarm.bpbio.com.br/#/Home/Main?panelId=132
start /min nircmd.exe cmdwait 15000 savescreenshot "D:\Apps\BOT_SIMPLEVIEW\reports\prints\Atraso_TRP.png"