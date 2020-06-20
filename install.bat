@echo off
echo Installing OpenSSH...
powershell set-executionpolicy bypass
powershell .\install.ps1
refreshenv.cmd
exit /b
