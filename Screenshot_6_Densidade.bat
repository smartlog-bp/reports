@echo off
start chrome http://simplefarm.bpbio.com.br/#/Home/Main?panelId=98
start /min nircmd.exe cmdwait 45000 savescreenshot "C:\Users\soghwu\Desktop\reports\prints\Densidade.png"
