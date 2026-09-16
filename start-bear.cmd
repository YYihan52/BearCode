@echo off
setlocal
cd /d "%~dp0"
chcp 65001 >nul
set PYTHONUTF8=1
set USERPROFILE=%~dp0.runtime-home
if not exist "%USERPROFILE%" mkdir "%USERPROFILE%"
"%~dp0.venv-win\Scripts\python.exe" -m agents.main %*
if errorlevel 1 pause
endlocal
