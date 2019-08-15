' Cria os objetos a serem manipulados
Dim wShell
Set wShell = CreateObject("WScript.Shell")
wShell.CurrentDirectory = "C:\Users\hofdpf\reports"

' Abre o site no navegador
wShell.Run "firefox.exe http://simplefarm.bpbio.com.br/Login"
'Wscript.Sleep 400
'wShell.sendkeys "http://simplefarm.bpbio.com.br/Login"
'wShell.sendkeys "{ENTER}"

' Tempo que ele deve esperar até o site abrir (30 segundos)
Wscript.Sleep 15000

' Preciona TAB ate chegar no usuário e senha

'wshell.SendKeys "{TAB}"


' Inseri o usuário
WShell.SendKeys "hofdpf"

' Preciona tab pra colocar a senha
WShell.SendKeys "{TAB}"

' Digita a senha
WShell.SendKeys "Bienvenido19"

' Preciona o Enter pra entrar no email do site
WShell.SendKeys "{ENTER}"

WShell.SendKeys "{F11}"

wShell.Run "Screenshot_6_Densidade.bat"

Wscript.Sleep 50000

wShell.Run "Screenshot_6_Transporte.bat"

Wscript.Sleep 65000

wShell.Run "Git_Push.bat"

Wscript.Sleep 20000

'wShell.Run "Bot_Envio_Geral.bat"

' initializing date
myDate = Day(Now)
myDate2 = Month(Now)
myDate3 = Year(Now)
myDate4 = Hour(Now)
myDate5 = Minute(Now)
myDate6 = Second(Now)
'myFormat = "dd/MM/yyyy hh:mm:ss"

' formatting the date 
'Dim sb
'Set sb = createobject("System.Text.StringBuilder")
'sb.AppendFormat "{0:" & myFormat & "}", myDate

'Dim url
'Set url = createobject("https://api.telegram.org/bot807217173:AAFN5GEAp1raqS7vNoH_svObT3soUep9EHY/sendPhoto?chat_id=-1001406043546&caption=Densidade&photo=https://raw.githubusercontent.com/smartlog-bp/reports/master/prints/Densidade.png?raw=true?v="&sb)


wShell.Run "firefox.exe https://api.telegram.org/bot807217173:AAFN5GEAp1raqS7vNoH_svObT3soUep9EHY/sendPhoto?chat_id=-1001406043546&caption=Densidade&photo=https://raw.githubusercontent.com/smartlog-bp/reports/master/prints/Densidade.png?=" & myDate5 & myDate4 & myDate & myDate2
'Wscript.Sleep 8000
wShell.Run "firefox.exe https://api.telegram.org/bot807217173:AAFN5GEAp1raqS7vNoH_svObT3soUep9EHY/sendPhoto?chat_id=-1001406043546&caption=Transporte%20TRP&photo=https://raw.githubusercontent.com/smartlog-bp/reports/master/prints/Transporte_TRP.png?=" & myDate5 & myDate4 & myDate & myDate2
'Wscript.Sleep 8000
wShell.Run "firefox.exe https://api.telegram.org/bot807217173:AAFN5GEAp1raqS7vNoH_svObT3soUep9EHY/sendPhoto?chat_id=-1001406043546&caption=Hora_a_Hora_ITB&photo=https://raw.githubusercontent.com/smartlog-bp/reports/master/prints/Hora_Hora_ITB.png?raw=true=TIMESTAMP"

WShell.SendKeys "{F11}"

Wscript.Sleep 8000
wShell.Run "Task_Kill.bat"

'wShell.Run "C:\Users\hofdpf\Documents\Telegram\1 Teste\Screenshot Test 2.bat"