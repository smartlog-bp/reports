@echo off
start firefox http://simplefarm.bpbio.com.br/#/Home/Main?panelId=126
start /min nircmd.exe cmdwait 40000 savescreenshot "C:\Users\soghwu\Desktop\reports\prints\Hora_Hora_TRP.png"

