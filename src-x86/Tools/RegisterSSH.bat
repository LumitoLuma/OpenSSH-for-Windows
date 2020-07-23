@echo off
echo Registering sshd.exe and ssh-agent.exe...
echo.
pushd ..
powershell .\install-sshd.ps1
ping localhost -n 2 >NUL