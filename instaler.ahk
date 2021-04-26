#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force ; Only launch 1 instance of this script.
v := "https://github.com/JWitterick/Test/blob/Setup/update.ahk?raw=true"
URLDownloadToFile %v%, %A_ScriptDir%\update.ahk
FileCreateShortcut %A_ScriptDir%\update.ahk, %A_Startup%\update - Shortcut.lnk
run %A_ScriptDir%\update.ahk
