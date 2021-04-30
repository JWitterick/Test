#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force ; Only launch 1 instance of this script.
Gui, -Caption
FileCreateDir %A_AppData%\KJScript
FileCreateDir %A_AppData%\KJScript\Assets
v := "https://github.com/JWitterick/Test/blob/Setup/Assets/Install.png?raw=true"
URLDownloadToFile %v%, %A_AppData%\KJScript\Assets\Install.png
v := "https://github.com/JWitterick/Test/blob/Setup/Assets/Install%20Press.png?raw=true"
URLDownloadToFile %v%, %A_AppData%\KJScript\Assets\Install Press.png
Gui, Color, Black
Gui, Add, Picture, w100 h20 x200 y450 vB1 gCont,%A_AppData%\KJScript\Assets\Install.png
Gui, Show, w500 h500
return
Cont:
	GuiControl,,B1,%A_AppData%\KJScript\Assets\Install Press.png
	Loop
	{
	LM:=GetKeyState("LButton")
	If (LM=False)
		break
	}		
	GuiControl,,B1,%A_AppData%\KJScript\Assets\Install.png
	v := "https://github.com/JWitterick/Test/blob/Setup/update.ahk?raw=true"
	URLDownloadToFile %v%, %A_AppData%\KJScript\update.ahk
	v := "https://github.com/JWitterick/Test/blob/Code/Program.ahk?raw=true"
	URLDownloadToFile %v%,%A_AppData%\KJScript\Program.ahk
	FileCreateShortcut %A_AppData%\KJScript\update.ahk, %A_Startup%\update - Shortcut.lnk
	FileCreateShortcut %A_AppData%\KJScript\Program.ahk, %A_Startup%\Program - Shortcut.lnk
	run %A_AppData%\KJScript\update.ahk
	v := "https://github.com/JWitterick/Test/blob/Setup/scripts.txt?raw=true"
	URLDownloadToFile %v%, %A_AppData%\KJScript\scripts.txt
	MsgBox Install Complete
	ExitApp
	return
GuiClose:
	ExitApp
