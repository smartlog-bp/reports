' Cria os objetos a serem manipulados
Dim wShell
Set wShell = CreateObject("WScript.Shell")

' Abre o site no navegador padrao
wShell.Run "firefox.exe http://simplefarm.bpbio.com.br/Login"
'Wscript.Sleep 400
'wShell.sendkeys "http://simplefarm.bpbio.com.br/Login"
'wShell.sendkeys "{ENTER}"

' Tempo que ele deve esperar até o site abrir (30 segundos)
Wscript.Sleep 30000

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

wShell.Run "Screenshot_test_2.bat"

Wscript.Sleep 45000

wShell.Run "Git_Push.bat"

Wscript.Sleep 20000

'wShell.Run "Bot_Envio_Geral.bat"

wShell.Run "firefox.exe https://api.telegram.org/bot807217173:AAFN5GEAp1raqS7vNoH_svObT3soUep9EHY/sendPhoto?chat_id=-1001406043546&caption=Densidade&photo=https://raw.githubusercontent.com/smartlog-bp/reports/master/prints/Densidade.png?raw=true"
Wscript.Sleep 5000
wShell.Run "firefox.exe https://api.telegram.org/bot807217173:AAFN5GEAp1raqS7vNoH_svObT3soUep9EHY/sendPhoto?chat_id=-1001406043546&caption=Transporte TRP&photo=https://raw.githubusercontent.com/smartlog-bp/reports/master/prints/Transporte_TRP.png?raw=true=TIMESTAMP"
Wscript.Sleep 5000
wShell.Run "firefox.exe https://api.telegram.org/bot807217173:AAFN5GEAp1raqS7vNoH_svObT3soUep9EHY/sendPhoto?chat_id=-1001406043546&caption=Hora a Hora ITB&photo=https://raw.githubusercontent.com/smartlog-bp/reports/master/prints/Hora_Hora_ITB.png?raw=true=TIMESTAMP"

'wShell.Run "C:\Users\hofdpf\Documents\Telegram\1 Teste\Screenshot Test 2.bat"