@echo off
echo Registering sshd.exe and ssh-agent.exe (this may take a few seconds)...
echo.
pushd ..
powershell Set-ExecutionPolicy Bypass -Scope Process -Force; .\install-sshd.ps1
ping localhost -n 2 >NUL
popd
exit /b
