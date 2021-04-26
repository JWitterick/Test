#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force ; Only launch 1 instance of this script.
; #Persistent ; Will keep the script running
; 40:48
; Alt key is !  Windows key is #  Shift key is +  Ctrl key is ^
v := "https://github.com/JWitterick/Test/blob/Code/Program.ahk?raw=true"
URLDownloadToFile %v%, %A_ScriptDir%\Program.ahk
