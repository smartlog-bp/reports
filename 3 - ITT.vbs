'--------------------------------------------------------------------------------------

' Script para timer

nMinutes = 0
nSeconds = 5
sMessage = "<font color=white size=+5><b>PARE! O Bot come�ar� em</b></font>"

' Open a chromeless window with message
with HTABox("red", 600, 700, 600, 200)
  .document.title = "SmartLog Bot"
  .msg.innerHTML = sMessage
  do until .done.value or (nMinutes + nSeconds < 1)
    .msg.innerHTML = sMessage & "<br>" & "<font color=white size=+5>" & nMinutes & ":" & Right("0"&nSeconds, 2) & "<br>" _
                   '& " restantes<br>"
    wsh.sleep 1000 ' milliseconds
    nSeconds = nSeconds - 1
    if nSeconds < 0 then 
      if nMinutes > 0 then
        nMinutes = nMinutes - 1
        nSeconds = 59
      end if
    end if
  loop
  .done.value = true
  .close
end with

'wsh.echo "Iniciando Bot..."

' script ends here

' supporting function HTABox
' Author Tom Lavedas, June 2010
Function HTABox(sBgColor, h, w, l, t)
Dim IE, HTA, sCmd, nRnd

  randomize : nRnd = Int(1000000 * rnd)
  sCmd = "mshta.exe ""javascript:{new " _
       & "ActiveXObject(""InternetExplorer.Application"")" _
       & ".PutProperty('" & nRnd & "',window);" _
       & "window.resizeTo(" & w & "," & h & ");" _
       & "window.moveTo(" & l & "," & t & ")}"""

  with CreateObject("WScript.Shell")
    .Run sCmd, 1, False
    do until .AppActivate("javascript:{new ") : WSH.sleep 10 : loop
  end with ' WSHShell

  For Each IE In CreateObject("Shell.Application").windows
    If IsObject(IE.GetProperty(nRnd)) Then
      set HTABox = IE.GetProperty(nRnd)
      IE.Quit
      HTABox.document.title = "HTABox"
      HTABox.document.write _
               "<HTA:Application contextMenu=no border=thin " _
             & "minimizebutton=no maximizebutton=no sysmenu=no />" _
             & "<body scroll=no style='background-color:" _
             & sBgColor & ";font:normal 30pt Arial;" _
             & "border-Style:inset;border-Width:5px'" _
             & "onbeforeunload='vbscript:if not done.value then " _
             & "window.event.cancelBubble=true:" _
             & "window.event.returnValue=false:" _
             & "done.value=true:end if'>" _
             & "<input type=hidden id=done value=false>" _
             & "<center><span id=msg>&nbsp;</span><br>" _
             & "<input type=button id=btn1 value=' OK ' "_
             & "onclick=done.value=true><center></body>"
      HTABox.btn1.focus
      Exit Function
    End If
  Next

' I can't imagine how this line can be reached, but just in case
  MsgBox "HTA window not found."
  wsh.quit
  End Function 
  
 '---------------------------------------------------------------------------------------
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

wShell.Run "Screenshot_3_Densidade.bat"

Wscript.Sleep 21000

wShell.Run "Screenshot_3_Transporte.bat"

Wscript.Sleep 26000

wShell.Run "Screenshot_3_Hora_Hora_C.bat"

Wscript.Sleep 32000

wShell.Run "Screenshot_3_Hora_Hora_A.bat"

Wscript.Sleep 32000

wShell.Run "Screenshot_3_Hora_Hora_B.bat"

Wscript.Sleep 32000

wShell.Run "Screenshot_3_Caminhoes_Atraso.bat"

Wscript.Sleep 16000

wShell.Run "Git_Push.bat"

Wscript.Sleep 12000

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

'Envio Densidade ITT
wShell.Run "chrome.exe https://api.telegram.org/bot807217173:AAFN5GEAp1raqS7vNoH_svObT3soUep9EHY/sendPhoto?chat_id=-1001406043546&caption=Densidade%20ITT&photo=https://raw.githubusercontent.com/smartlog-bp/reports/master/prints/Densidade_ITT.png?=" & myDate5 & myDate4 & myDate & myDate2
'Envio Transporte ITT
wShell.Run "chrome.exe https://api.telegram.org/bot807217173:AAFN5GEAp1raqS7vNoH_svObT3soUep9EHY/sendPhoto?chat_id=-1001406043546&caption=Transporte%20ITT&photo=https://raw.githubusercontent.com/smartlog-bp/reports/master/prints/Transporte_ITT.png?=" & myDate5 & myDate4 & myDate & myDate2
'Envio Hora a Hora ITT Turno C
wShell.Run "chrome.exe https://api.telegram.org/bot807217173:AAFN5GEAp1raqS7vNoH_svObT3soUep9EHY/sendPhoto?chat_id=-1001406043546&caption=Hora%20a%20Hora%20ITT%20Turno%20C&photo=https://raw.githubusercontent.com/smartlog-bp/reports/master/prints/Hora_Hora_ITT_C.png?=" & myDate5 & myDate4 & myDate & myDate2
'Envio Hora a Hora ITT Turno A
wShell.Run "chrome.exe https://api.telegram.org/bot807217173:AAFN5GEAp1raqS7vNoH_svObT3soUep9EHY/sendPhoto?chat_id=-1001406043546&caption=Hora%20a%20Hora%20ITT%20Turno%20A&photo=https://raw.githubusercontent.com/smartlog-bp/reports/master/prints/Hora_Hora_ITT.png?=" & myDate5 & myDate4 & myDate & myDate2
'Envio Hora a Hora ITT Turno B
wShell.Run "chrome.exe https://api.telegram.org/bot807217173:AAFN5GEAp1raqS7vNoH_svObT3soUep9EHY/sendPhoto?chat_id=-1001406043546&caption=Hora%20a%20Hora%20ITT%20Turno%20B&photo=https://raw.githubusercontent.com/smartlog-bp/reports/master/prints/Hora_Hora_ITT_B.png?=" & myDate5 & myDate4 & myDate & myDate2
'Envio Caminhões em Atraso ITT
wShell.Run "chrome.exe https://api.telegram.org/bot807217173:AAFN5GEAp1raqS7vNoH_svObT3soUep9EHY/sendPhoto?chat_id=-1001406043546&caption=Caminhoes%20em%20Atraso%20ITT&photo=https://raw.githubusercontent.com/smartlog-bp/reports/master/prints/Atraso_ITT.png?=" & myDate5 & myDate4 & myDate & myDate2

WShell.SendKeys "{F11}"


'Fechar janelas
Wscript.Sleep 10000
WShell.SendKeys "%{F4}"
WShell.SendKeys "{ENTER}"


'Wscript.Sleep 15000
'wShell.Run "Task_Kill.bat"

'wShell.Run "C:\Users\hofdpf\Documents\Telegram\1 Teste\Screenshot Test 2.bat"