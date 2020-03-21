@echo off
taskkill /F /IM Explorer.exe
duke3d_w32.exe %*
start %windir%\Explorer.exe