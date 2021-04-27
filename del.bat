@echo off
del "%CD%\instaler.*ahk" /s /f /q
start /b "" cmd /c del "%~f0"&exit /b
