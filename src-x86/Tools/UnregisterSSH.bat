@echo off
echo Unregistering sshd.exe and ssh-agent.exe...
echo.
pushd ..
powershell .\uninstall-sshd.ps1
ping localhost -n 2 >NUL