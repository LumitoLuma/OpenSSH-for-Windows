# OpenSSH for Windows - Installer

## About OpenSSH for Windows - Installer

OpenSSH is a very popular suite of network utilities based on the SSH protocol (Secure Shell). Finding an installation tool for Windows is not very easy, since almost all Windows versions are portable. For that reason, [Chocolatey](https://www.chocolatey.org) wrote a script which installs OpenSSH for Windows, but the version that installs it's not updated.

An that is what OpenSSH for Windows - Installer does: install a modern version of OpenSSH into your Windows system.

However, this is not the latest version of the product, because I have used a portable compiled version from [PowerShell's GitHub](https://github.com/PowerShell), and then, I've applied Chocolatey's OpenSSH installation script.

## Installation instructions

[![PowerShell Install](https://github.com/LumitoLuma/OpenSSHforWindows-Installer/workflows/PowerShell%20Install/badge.svg)](https://github.com/LumitoLuma/OpenSSHforWindows-Installer/actions?query=workflow%3A"PowerShell+Install") [![Build status](https://ci.appveyor.com/api/projects/status/na7ther37swbma0i?svg=true)](https://ci.appveyor.com/project/LumitoLuma/OpenSSHforWindows-Installer)

- Download or `git clone` the repository.
- Open Command Prompt as Administrator (`cmd.exe`) and go to the directory in which you have the extracted files.
- Run `install.bat`
- Wait a few seconds...
- Done! Enjoy OpenSSH for Windows!

### Aditional installation instructions

In modern versions of Windows, OpenSSH comes preinstalled with your system. This script will not overwrite the original files, it will be installed in another directory. The problem is that when you install OpenSSH for Windows and you run, for example, `ssh -V`, you will notice that you are running version 7.* of OpenSSH (Windows preinstalled version). If you want to run the newer version of OpenSSH, follow this steps:

- Open Command Prompt (`cmd.exe`) and type `where ssh.exe`. You will se two results: One from System32 and another from Program Files.
- Copy `ssh.exe` Program Files' path.
- Run `systempropertiesadvanced` and go to Edit System variables (or something similar).
- At system variables section, search for PATH variable, and edit it.
- Create a new value (Windows 10) and paste the path of the directory in which `ssh.exe` is installed (Windows 10 and Windows 7) before the old OpenSSH directory (Windows 7). If you are using Windows 10, move the new value above the old OpenSSH one.
- Save values and restart console.
- Done! Now if you run `ssh -V` you will see the new version of OpenSSH.

## Uninstallation instructions
 
Sadly, `uninstall.ps1` currently does not work, so if you want to uninstall OpenSSH, you'll need to do it manually:
 
- Remove Program Files' OpenSSH folder.
- Open PATH variable as indicated on 'Aditional installation instructions'. 
- Delete the value that displays Program Files' OpenSSH directory.
- Save changes and done!

I'm working to make this feature possible.

## Contributing to the project.
 
If you want to contribute to the project, please contact me through [lumito.net/contact](https://lumito.net/contact).

You can contribute with the following things:
 
- A new portable version of OpenSSH (in .ZIP file format)
- Code improvements
- Ideas for future programs / services.

Reporting bugs there is not allowed, unless you have reported them through [Issues](https://github.com/LumitoLuma/OpenSSHforWindows-Installer/issues) tab and you have not received any comments for a while (minimum a week).

## Aknowledgements

I want to thanks to [OpenBSD](https://www.openbsd.org), [OpenSSH](https://www.openssh.org), [PowerShell](https://github.com/PowerShell) and [Chocolatey](https://www.chocolatey.org) for making this project possible, and to you for choosing my programs!

## Copyrights

#### © 1996 - 2020, the OpenBSD project
#### © 1999 - 2020, the OpenSSH project
#### © 2006 - 2020, PowerShell and Microsoft Corporation
#### © 2017 - 2020, Chocolatey Software Inc.
#### © 2020, Lumito

Visit my website: [www.lumito.net](https://lumito.net)
