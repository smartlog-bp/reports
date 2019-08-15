@echo off
start firefox http://simplefarm.bpbio.com.br/#/Home/Main?panelId=108
start /min nircmd.exe cmdwait 45000 savescreenshot "C:\Users\hofdpf\reports\prints\Hora_Hora_TRP.png"

