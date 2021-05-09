#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force ; Only launch 1 instance of this script
#NoTrayIcon
state:=0

^!u::
run %A_ScriptDir%\update.ahk
return
^!e::
ExitApp
return

^+Insert::
If (state=0) {
Menu, Tray, Icon
state:=1
return
} 
else {
Menu, Tray, NoIcon
state:=0
return
}
