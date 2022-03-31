'
' @Author: Yaaprogrammer
' @Date: 2022-03-31 19:22:54
' @LastEditors: Yaaprogrammer
' @LastEditTime: 2022-03-31 19:25:41
' 
' Copyright (c) 2022 by Yaaprogrammer, All Rights Reserved.
'

'Start powershell and hide the window

visible=0
powershellScriptPath="D:\emacs\wsl-emacs-contextmenu\emacs_start.ps1"

set ws=WScript.CreateObject("WScript.Shell")
set args=WScript.Arguments

if(args.Length > 0) then
    ws.Run "powershell.exe "+powershellScriptPath+" """ + args(0) + """",visible,True
Else
    ws.Run "powershell.exe "+powershellScriptPath,visible,True
End if
Wscript.quit