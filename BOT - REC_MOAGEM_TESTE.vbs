
  'Início de Script relatórios

' Cria os objetos a serem manipulados
Dim wShell
Set wShell = CreateObject("WScript.Shell")
wShell.CurrentDirectory = "D:\Apps\BOT_SIMPLEVIEW\reports"

' Abre o site no navegador
wShell.Run "abrir.vbs"
'wShell.Run "chrome.exe http://simplefarm.bpbio.com.br/Login"
'Wscript.Sleep 400
'wShell.sendkeys "http://simplefarm.bpbio.com.br/Login"
'wShell.sendkeys "{ENTER}"

' Tempo que ele deve esperar até o site abrir (10 segundos)
Wscript.Sleep 10000

' Pressiona TAB até chegar no usuário e senha

'wshell.SendKeys "{TAB}"


' Insere o usuário
WShell.SendKeys "svcviewerbot"

' Preciona tab pra colocar a senha
WShell.SendKeys "{TAB}"

' Digita a senha
WShell.SendKeys "602ff10c"

' Preciona o Enter pra entrar no email do site
WShell.SendKeys "{ENTER}"

WShell.SendKeys "{F11}"

Wscript.Sleep 5000

wShell.Run "rec_moa_ITT.bat"

Wscript.Sleep 21000

wShell.Run "rec_moa_ITB.bat"

Wscript.Sleep 26000

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
'Set url = createobject("https://api.telegram.org/bot807217173:AAFN5GEAp1raqS7vNoH_svObT3soUep9EHY/sendPhoto?chat_id=-1001180177176&caption=Densidade&photo=https://raw.githubusercontent.com/smartlog-bp/reports/master/prints/Densidade.png?raw=true?v="&sb)

'Envio recomendacao moagem ITT
wShell.Run "chrome.exe https://api.telegram.org/bot807217173:AAFN5GEAp1raqS7vNoH_svObT3soUep9EHY/sendPhoto?chat_id=-419753322&caption=RECOMENDACAO%20MOAGEM%20ITT&photo=https://raw.githubusercontent.com/smartlog-bp/reports/master/prints/rec_moa_ITT.png?=" & myDate5 & myDate4 & myDate & myDate2
'Envio recomendacao moagem ITB
wShell.Run "chrome.exe https://api.telegram.org/bot807217173:AAFN5GEAp1raqS7vNoH_svObT3soUep9EHY/sendPhoto?chat_id=-438521740&caption=RECOMENDACAO%20MOAGEM%20ITB&photo=https://raw.githubusercontent.com/smartlog-bp/reports/master/prints/rec_moa_ITB.png?=" & myDate5 & myDate4 & myDate & myDate2

WShell.SendKeys "{F11}"


'Fechar janelas
Wscript.Sleep 10000
WShell.SendKeys "%{F4}"
WShell.SendKeys "{ENTER}"


'Wscript.Sleep 15000
'wShell.Run "Task_Kill.bat"

'wShell.Run "C:\Users\hofdpf\Documents\Telegram\1 Teste\Screenshot Test 2.bat"