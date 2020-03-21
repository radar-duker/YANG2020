@echo off
taskkill /F /IM Explorer.exe
hduke.exe %*
start %windir%\Explorer.exe