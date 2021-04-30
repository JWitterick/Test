@echo off
sleep 5
del "%CD%\instaler.*ahk" /s /f /q
start /b "" cmd /c del "%~f0"&exit /b
