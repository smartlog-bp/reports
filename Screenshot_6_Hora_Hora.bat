@echo off
start firefox http://simplefarm.bpbio.com.br/#/Home/Main?panelId=108
start /min nircmd.exe cmdwait 60000 savescreenshot "C:\Users\soghwu\Desktop\reports\prints\Hora_Hora_TRP.png"

