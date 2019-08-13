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

wShell.Run "Bot_Envio_Geral.bat"

'wShell.Run "C:\Users\hofdpf\Documents\Telegram\1 Teste\Screenshot Test 2.bat"