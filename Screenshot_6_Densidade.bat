@echo off
start chrome http://simplefarm.bpbio.com.br/#/Home/Main?panelId=98
start /min nircmd.exe cmdwait 45000 savescreenshot "D:\Apps\BOT_SIMPLEVIEW\reports\prints\Densidade.png"
