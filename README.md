# OpenSSH for Windows - Installer

## About OpenSSH for Windows - Installer

OpenSSH is a very popular suite of network utilities based on the SSH protocol (Secure Shell). Finding an installation tool for Windows is not very easy, since almost all Windows versions are portable. For that reason, [Chocolatey](https://www.chocolatey.org) wrote a script which installs OpenSSH for Windows, but the version that installs it's not updated.

An that is what OpenSSH for Windows - Installer does: install a modern version of OpenSSH into your Windows system.

However, this is not the latest version of the product, because I have used a portable compiled version from [PowerShell's GitHub](https://github.com/PowerShell), and then, I've applied Chocolatey's OpenSSH installation script.

Recently, I have uploaded a new way to install OpenSSH for Windows: a real installer! Coded in Inno Setup and C++. Installation instructions for this method are also in this file.

## Installation instructions

|                        GitHub Actions                        |                           AppVeyor                           |                       Azure Pipelines                        |                          Travis CI                           |                            Codacy                            |
| :----------------------------------------------------------: | :----------------------------------------------------------: | :----------------------------------------------------------: | :----------------------------------------------------------: | :----------------------------------------------------------: |
| [![Inno Setup](https://github.com/LumitoLuma/OpenSSHforWindows-Installer/workflows/Inno%20Setup/badge.svg)](https://github.com/LumitoLuma/OpenSSHforWindows-Installer/actions?query=workflow%3A%22Inno+Setup%22) | [![Build status](https://ci.appveyor.com/api/projects/status/na7ther37swbma0i?svg=true)](https://ci.appveyor.com/project/LumitoLuma/OpenSSHforWindows-Installer) | [![Build Status](https://dev.azure.com/LumitoLuma/GitHub/_apis/build/status/LumitoLuma.OpenSSHforWindows-Installer?branchName=master)](https://dev.azure.com/LumitoLuma/GitHub/_build/latest?definitionId=4&branchName=master) | [![Build Status](https://travis-ci.com/LumitoLuma/OpenSSHforWindows-Installer.svg?branch=master)](https://travis-ci.com/LumitoLuma/OpenSSHforWindows-Installer) | [![Codacy Badge](https://app.codacy.com/project/badge/Grade/0285d9a57f52467d8f5b006386b1ffba)](https://www.codacy.com/manual/LumitoLuma/OpenSSHforWindows-Installer?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=LumitoLuma/OpenSSHforWindows-Installer&amp;utm_campaign=Badge_Grade) |
| [![PowerShell Install (old)](https://github.com/LumitoLuma/OpenSSHforWindows-Installer/workflows/PowerShell%20Install%20(old)/badge.svg)](https://github.com/LumitoLuma/OpenSSHforWindows-Installer/actions?query=workflow%3A%22PowerShell+Install+%28old%29%22) |                        **----------**                        |                        **----------**                        |                        **----------**                        |                        **----------**                        |

There are two ways to install OpenSSH for Windows:

### New method (Inno Setup and C++) (Beta)

**Attention! This method is not tested on x86 Windows systems. If you want to test it on that Windows architecture, please contact me trough [www.lumito.net/contact](https://lumito.net/contact) with the results. Thanks!**

#### Special requirements
-   Inno Setup 6
-   MSVC or MinGW with gcc and g++ support

#### Installation steps
1.  Download or `git clone` the repository.

2.  Open Developer Command Prompt (if you use MSVC) or Command Prompt if you use MinGW.

3.  Go to the ISCompiler folder at the directory in which you have extracted the files.

4.  Now run:

    -   `cl.exe ISCompil.cpp` if you are using MSVC.
    -   `g++ ISCompil.cpp -o ISCompil.exe` if you are using MinGW.

5.  After compiling `ISCompil.cpp`, run `ISCompil.exe`

6.  Finally, check `..\{WINDOWS ARCHITECTURE}` folder for `OpenSSHforWindows-Installer-{WINDOWS ARCHITECTURE}.exe`

7.  Done! Now you can install OpenSSH for Windows correctly.

### Old method (PowerShell)

-   Download or `git clone` the repository.
-   Open Command Prompt as Administrator (`cmd.exe`) and go to the directory in which you have extracted the files.
-   Run `install.bat`
-   Wait a few seconds...
-   Done! Enjoy OpenSSH for Windows!

#### Additional installation instructions (for PowerShell method)

**ATTENTION: this installation way is deprecated, since there is a [new installation method](#new-method-inno-setup-and-c-beta) that fixes all the issues this method has.**

In modern versions of Windows, OpenSSH comes preinstalled with your system. This script will not overwrite the original files, it will be installed in another directory. The problem is that when you install OpenSSH for Windows and you run, for example, `ssh -V`, you will notice that you are running version 7.* of OpenSSH (Windows preinstalled version). If you want to run the newer version of OpenSSH, follow this steps:

-   Open Command Prompt (`cmd.exe`) and type `where ssh.exe`. You will se two results: One from System32 and another from Program Files.
-   Copy `ssh.exe` Program Files' path.
-   Run `systempropertiesadvanced.exe` and go to Edit system variables (or something similar).
-   At system variables section, search for PATH variable, and edit it.
-   Create a new value (Windows 10) and paste the path of the directory in which `ssh.exe` is installed (Windows 10 and Windows 7) before the old OpenSSH directory (Windows 7). If you are using Windows 10, move the new value above the old OpenSSH one.
-   Save changes and restart console.
-   Done! Now if you run `ssh -V` you will see the new version of OpenSSH.

This issue is fixed using the [new installation method](#new-method-inno-setup-and-c-beta) (with Inno Setup and C++).

## Uninstallation instructions

### New method (Inno Setup and C++)

You can uninstall OpenSSH for Windows through Programs and Features in Control Panel.

### Old method

Sadly, `uninstall.ps1` currently does not work, so if you want to uninstall OpenSSH, you'll need to do it manually:

-   Remove Program Files' OpenSSH folder.
-   Open PATH variable as indicated on 'Additional installation instructions'. 
-   Delete the value that displays Program Files' OpenSSH directory.
-   Save changes and done!

I'm working to make this feature possible.

## Contributing to the project

If you want to contribute to the project, please contact me through [lumito.net/contact](https://lumito.net/contact).

You can contribute with the following things:

-   A new portable version of OpenSSH (in .ZIP file format)
-   Code improvements
-   Ideas for future programs / services.

Reporting bugs there is not allowed, unless you have reported them through [Issues](https://github.com/LumitoLuma/OpenSSHforWindows-Installer/issues) tab and you have not received any comments for a while (minimum a week).

## Acknowledgements

I want to thanks to [OpenBSD](https://www.openbsd.org), [OpenSSH](https://www.openssh.org), [PowerShell](https://github.com/PowerShell), [Chocolatey](https://www.chocolatey.org) and [Inno Setup](https://www.innosetup.com) for making this project possible, and to you for choosing my programs!

## Copyrights

© 1996 - 2020, the OpenBSD project

© 1999 - 2020, the OpenSSH project

© 2006 - 2020, PowerShell and Microsoft Corporation

© 2017 - 2020, Chocolatey Software Inc.

© 1997-2020 Jordan Russell
<br><br>
**© 2020, Lumito - [www.lumito.net](https://lumito.net)**
