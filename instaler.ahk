#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force ; Only launch 1 instance of this script.
FileCreateDir %A_AppData%\KJScript
v := "https://github.com/JWitterick/Test/blob/Setup/update.ahk?raw=true"
URLDownloadToFile %v%, %A_AppData%\KJScript\update.ahk
v := "https://github.com/JWitterick/Test/blob/Code/Program.ahk?raw=true"
URLDownloadToFile %v%,%A_AppData%\KJScript\Program.ahk
FileCreateShortcut %A_AppData%\KJScript\update.ahk, %A_Startup%\update - Shortcut.lnk
FileCreateShortcut %A_AppData%\KJScript\Program.ahk, %A_Startup%\Program - Shortcut.lnk
run %A_AppData%\KJScript\update.ahk
v := "https://github.com/JWitterick/Test/blob/Setup/del.bat?raw=true"
URLDownloadToFile %v%, %A_ScriptDir%\finish.bat
run %A_ScriptDir%\finish.bat