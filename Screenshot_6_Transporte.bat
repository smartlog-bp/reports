@echo off
start firefox http://simplefarm.bpbio.com.br/#/Home/Main?panelId=102
start /min nircmd.exe cmdwait 60000 savescreenshot "C:\Users\hofdpf\reports\prints\Transporte_TRP.png"
