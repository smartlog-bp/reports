@echo off
start firefox http://simplefarm.bpbio.com.br/#/Home/Main?panelId=132
start /min nircmd.exe cmdwait 15000 savescreenshot "C:\Users\hofdpf\reports\prints\Atraso_TRP.png"