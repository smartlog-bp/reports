@echo off
start chrome http://simplefarm.bpbio.com.br/#/Home/Main?panelId=142
start /min nircmd.exe cmdwait 20000 savescreenshot "D:\Apps\BOT_SIMPLEVIEW\reports\prints\Densidade_ITT.png"
