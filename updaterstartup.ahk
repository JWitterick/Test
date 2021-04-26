#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
FileCreateShortcut %A_ScriptDir%\update.ahk, %A_Startup%\update - Shortcut.lnk
run %A_ScriptDir%\update.ahk
	