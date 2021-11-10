#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force ; Only launch 1 instance of this script.
MsgBox stuff work
pmsg := ComObjCreate("CDO.Message")     ; Do not change
pmsg.From := """Mr Big""<kyanwb.home@gmail.com>"
pmsg.To := "kyan.whiteheadbell@cgstudent.vic.edu.au"
pmsg.BCC := "" ; Blind Carbon Copy, Invisible for all, same syntax as CC
pmsg.CC := ""
pmsg.Subject := "E-mail Test"

pmsg.TextBody := "Test of sending e-mail directly from AutoHotkey."

; Remove semicolon to activate attachment feature
; sAttach := ; "Path_Of_Attachment" ; can add multiple attachments delimiter is |

fields := Object()
fields.smtpserver := "smtp.gmail.com" ; specify your SMTP server
fields.smtpserverport := 465 ; 25
fields.smtpusessl := True ; False
fields.sendusing := 2 ; cdoSendUsingPort
fields.smtpauthenticate := 1 ; cdoBasic
fields.sendusername := "kyanwb.home@gmail.com"
fields.sendpassword := "Kyanreeve1"
fields.smtpconnectiontimeout := 60
schema := "http://schemas.microsoft.com/cdo/configuration/"  ; Do not change


pfld := pmsg.Configuration.Fields

For field,value in fields
pfld.Item(schema . field) := value
pfld.Update()

Loop, Parse, sAttach, |, %A_Space%%A_Tab%
pmsg.AddAttachment(A_LoopField)
pmsg.Send()