@echo off
start chrome http://simplefarm.bpbio.com.br/#/Home/Main?panelId=132
start /min nircmd.exe cmdwait 30000 savescreenshot "C:\Users\soghwu\Desktop\reports\prints\Atraso_TRP.png"