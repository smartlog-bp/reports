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
Wscript.Sleep 20000

' Pressiona TAB até chegar no usuário e senha

'wshell.SendKeys "{TAB}"


' Insere o usuário
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

wShell.Run "Screenshot_6_Hora_Hora_A.bat"

Wscript.Sleep 45000

wShell.Run "Screenshot_6_Caminhoes_Atraso.bat"

Wscript.Sleep 20000

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

'Envio Densidade TRP
wShell.Run "firefox.exe https://api.telegram.org/bot807217173:AAFN5GEAp1raqS7vNoH_svObT3soUep9EHY/sendPhoto?chat_id=-1001406043546&caption=Densidade%20TRP&photo=https://raw.githubusercontent.com/smartlog-bp/reports/master/prints/Densidade.png?=" & myDate5 & myDate4 & myDate & myDate2
'Envio Transporte TRP
wShell.Run "firefox.exe https://api.telegram.org/bot807217173:AAFN5GEAp1raqS7vNoH_svObT3soUep9EHY/sendPhoto?chat_id=-1001406043546&caption=Transporte%20TRP&photo=https://raw.githubusercontent.com/smartlog-bp/reports/master/prints/Transporte_TRP.png?=" & myDate5 & myDate4 & myDate & myDate2
'Envio Hora a Hora TRP Turno A
wShell.Run "firefox.exe https://api.telegram.org/bot807217173:AAFN5GEAp1raqS7vNoH_svObT3soUep9EHY/sendPhoto?chat_id=-1001406043546&caption=Hora%20a%20Hora%20TRP%20Turno%20A&photo=https://raw.githubusercontent.com/smartlog-bp/reports/master/prints/Hora_Hora_TRP.png?=" & myDate5 & myDate4 & myDate & myDate2
'Envio Caminhões em Atraso TRP
wShell.Run "firefox.exe https://api.telegram.org/bot807217173:AAFN5GEAp1raqS7vNoH_svObT3soUep9EHY/sendPhoto?chat_id=-1001406043546&caption=Caminhoes%20em%20Atraso%20TRP&photo=https://raw.githubusercontent.com/smartlog-bp/reports/master/prints/Atraso_TRP.png?=" & myDate5 & myDate4 & myDate & myDate2

WShell.SendKeys "{F11}"

'Wscript.Sleep 15000
'wShell.Run "Task_Kill.bat"

'wShell.Run "C:\Users\hofdpf\Documents\Telegram\1 Teste\Screenshot Test 2.bat"