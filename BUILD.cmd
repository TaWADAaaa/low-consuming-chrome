@echo off
powershell.exe -NoProfile -File "%~dp0scripts\Build.ps1" -Product Chrome
if errorlevel 1 pause
