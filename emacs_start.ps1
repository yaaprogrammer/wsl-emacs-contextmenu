###
# @Author: Yaaprogrammer
# @Date: 2022-03-31 20:35:07
# @LastEditors: Yaaprogrammer
# @LastEditTime: 2022-03-31 20:35:36
# 
# Copyright (c) 2022 by Yaaprogrammer, All Rights Reserved.
### 


$wslUserName = "smj"
$xServerPath = "D:/mobaxterm/MobaXterm.exe"
$xServerProcessName = "mobaxterm"
$xServerOptions = " -hideterm"
$wsl = "ubuntu.exe"

$shellCommand = "cd ~; . /home/$wslUserName/emacs_start.sh"

#Check if X server is running
$xServerProcess = Get-Process $xServerProcessName -ErrorAction SilentlyContinue
if (!$xServerProcess) {
    Write-Host "xServer is not running"
    & $xServerPath $xServerOptions
    Write-Host "xServer started"
}
else {
    Write-Host "xServer is running"
}
Remove-Variable xServerProcess

#Get file path
Write-Host "powershell path arg:" $args[0]
$path = $args[0]

if ($path) {
    $replacedPath = $path.Replace("\", "/")
    Write-Host "replaced path: $replacedPath"
    $wslPath = "`$(wslpath $replacedPath)"
    & $wsl run "$shellCommand $wslPath"
}
else {
    Write-Host "no path, starting emacs directly"
    & $wsl run "$shellCommand"
}
[Environment]::Exit(1) 