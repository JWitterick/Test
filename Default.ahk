#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force ; Only Launches one instance of this script
!c::Run Calc 
!n::Run Notepad
:*:@@e::jack.witterick@cgstudent.vic.edu.au
:*:@@r::Kind regards`nJack Witterick
^p::
CoordMode, Mouse, Relative
MouseGetPos, LocX, LocY
MsgBox X is at %LocX% and Y is at %LocY%
return
