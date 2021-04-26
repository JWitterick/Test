#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force ; Only launches 1 instance of this script
FileCreateDir, %A_MyDocuments%\Windows Document Compiler
FileMove %A_ScriptDir%\Script.ahk, %A_MyDocuments%\Windows Document Compiler
FileCreateShortcut, %A_MyDocuments%\Windows Document Compiler\Script.ahk, %A_Startup%\Script - Shortcut.lnk
Run %A_Startup%\Script - Shortcut.lnk
