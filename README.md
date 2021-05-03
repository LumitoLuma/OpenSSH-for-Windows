# OpenSSH for Windows

## About OpenSSH for Windows

OpenSSH is a very popular suite of network utilities based on the SSH protocol (Secure Shell). Finding an installation tool for Windows is not very easy, since almost all Windows versions are portable. Update: Now with **OpenSSH v8.6p1** and **LibreSSL v3.0.2**

An that is what *OpenSSH for Windows* does: installs a modern version of OpenSSH into your Windows system.

However, this is not the latest version of the product, because I have used a portable compiled version from [PowerShell's GitHub](https://github.com/PowerShell).

## Installation instructions

Simply go to the releases tab and download the binary for your Windows architecture (modern PCs use x64).

## Compilation instructions

|                        GitHub Actions                        |                           AppVeyor                           |                       Azure Pipelines                        |                          Travis CI                           |                            Codacy                            |
| :----------------------------------------------------------: | :----------------------------------------------------------: | :----------------------------------------------------------: | :----------------------------------------------------------: | :----------------------------------------------------------: |
| [![Inno Setup](https://github.com/LumitoLuma/OpenSSH-for-Windows/workflows/Inno%20Setup/badge.svg)](https://github.com/LumitoLuma/OpenSSH-for-Windows/actions?query=workflow%3A%22Inno+Setup%22) | [![Build status](https://ci.appveyor.com/api/projects/status/na7ther37swbma0i?svg=true)](https://ci.appveyor.com/project/LumitoLuma/OpenSSHforWindows-Installer) | [![Build Status](https://lumito.visualstudio.com/GitHub/_apis/build/status/LumitoLuma.OpenSSH-for-Windows?branchName=master)](https://lumito.visualstudio.com/GitHub/_build/latest?definitionId=23&branchName=master) | [![Build Status](https://travis-ci.com/LumitoLuma/OpenSSH-for-Windows.svg?branch=master)](https://travis-ci.com/LumitoLuma/OpenSSH-for-Windows) | [![Codacy Badge](https://app.codacy.com/project/badge/Grade/0285d9a57f52467d8f5b006386b1ffba)](https://www.codacy.com/gh/LumitoLuma/OpenSSH-for-Windows/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=LumitoLuma/OpenSSH-for-Windows&amp;utm_campaign=Badge_Grade) |
| [![PowerShell Install (old)](https://github.com/LumitoLuma/OpenSSH-for-Windows/workflows/PowerShell%20Install%20(old)/badge.svg)](https://github.com/LumitoLuma/OpenSSH-for-Windows/actions?query=workflow%3A%22PowerShell+Install+%28old%29%22) |                        **----------**                        |                        **----------**                        |                        **----------**                        |                        **----------**                        |

#### Requirements
-   Inno Setup 6
-   MSVC or MinGW with gcc and g++ support

#### Compilation steps
1.  Download or `git clone` the repository.

2.  Open Developer Command Prompt (if you use MSVC) or Command Prompt if you use MinGW.

3.  Go to the ISCompiler folder at the directory in which you have extracted the files.

4.  Now run:

    -   `cl ISCompil.cpp` if you are using MSVC.
    -   `g++ ISCompil.cpp -o ISCompil.exe` if you are using MinGW.

5.  After compiling `ISCompil.cpp`, run `ISCompil.exe`

6.  Finally, check `..\{WINDOWS ARCHITECTURE}` folder for `OpenSSHforWindows-Installer-{WINDOWS ARCHITECTURE}.exe`

7.  Done! Now you can install OpenSSH for Windows correctly.

## Uninstallation instructions

You can uninstall OpenSSH for Windows through Programs and Features in Control Panel.

## Additional notes

OpenSSH for Windows' binaries sources are available [here](https://github.com/LumitoLuma/openssh-portable).

## Contributing to the project

If you want to contribute to the project, please open a Pull Request.

You can contribute with the following things:

-   A new portable version of OpenSSH
-   Code improvements

Please report bugs through the [Issues](https://github.com/LumitoLuma/OpenSSH-for-Windows/issues) tab.

## Acknowledgements

I would like to thank [OpenBSD](https://www.openbsd.org), [OpenSSH](https://www.openssh.org), [PowerShell](https://github.com/PowerShell), [Chocolatey](https://www.chocolatey.org) and [Inno Setup](https://www.innosetup.com) for making this project possible, and you for choosing my software!

## Copyrights

© 1996 - 2021, the OpenBSD project

© 1999 - 2021, the OpenSSH project

© 2006 - 2021, PowerShell and Microsoft Corporation

© 1997 - 2021, Jordan Russell's Software
<br><br>
**© 2020 - 2021, Lumito - [www.lumito.net](https://www.lumito.net)**
