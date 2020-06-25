@echo off
myDate = Day(Now)
myDate2 = Month(Now)
myDate3 = Year(Now)
myDate4 = Hour(Now)
myDate5 = Minute(Now)
myDate6 = Second(Now)

start chrome http://simplefarm.bpbio.com.br/#/Home/Main?panelId=157
start /min nircmd.exe cmdwait 20000 savescreenshot "D:\Apps\BOT_SIMPLEVIEW\reports\prints_qas\rec_moa_ITT.png"& myDate5 & myDate4 & myDate & myDate2
