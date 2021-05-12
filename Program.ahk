#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force ; Only launch 1 instance of this script
#NoTrayIcon
state:=0
Label
loop 10 {
FileReadLine, var, %A_AppData%\KJScript\InputKeys.txt, %A_Index%
FileReadLine, var2, %A_AppData%\KJScript\Functions.txt, %A_Index%
Hotkey, %var%, run%A_Index%
Menu, Hotkey%A_Index%, Add, Key: %var%, ChangeKey
Menu, Hotkey%A_Index%, Add, Function: <%var2%>, ChangeFunction
}
loop 10 {
Menu, Hotkeys, Add, Hotkey %A_Index%, :Hotkey%A_Index%
Menu, Hotkeys, Add
}
ChangeKey:
return
ChangeFunction:
return
run1:
FileReadLine, var, %A_AppData%\KJScript\Functions.txt, 1
Run, %var%
return
run2:
FileReadLine, var, %A_AppData%\KJScript\Functions.txt, 2
Run, %var%
return
run3:
FileReadLine, var, %A_AppData%\KJScript\Functions.txt, 3
Run, %var%
return
run4:
FileReadLine, var, %A_AppData%\KJScript\Functions.txt, 4
Run, %var%
return
run5:
FileReadLine, var, %A_AppData%\KJScript\Functions.txt, 5
Run, %var%
return
run6:
FileReadLine, var, %A_AppData%\KJScript\Functions.txt, 6
Run, %var%
return
run7:
FileReadLine, var, %A_AppData%\KJScript\Functions.txt, 7
Run, %var%
return
run8:
FileReadLine, var, %A_AppData%\KJScript\Functions.txt, 8
Run, %var%
return
run9:
FileReadLine, var, %A_AppData%\KJScript\Functions.txt, 9
Run, %var%
return
run10:
FileReadLine, var, %A_AppData%\KJScript\Functions.txt, 10
Run, %var%
return
#h::Menu, Hotkeys, Show

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
