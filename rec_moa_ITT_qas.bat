@echo off 
start chrome http://simplefarm.bpbio.com.br/#/Home/Main?panelId=157
start /min nircmd.exe cmdwait 20000 savescreenshot "D:\Apps\BOT_SIMPLEVIEW\reports\prints_qas\rec_moa_ITT.png"
