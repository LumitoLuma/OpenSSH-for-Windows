#include "resources/environment.iss"

#define MyAppName "OpenSSH for Windows x86"
#define MyAppVersion "8.6"
#define MyAppPublisher "Lumito"

[Setup]
AppId={{DB73FFD4-8CA1-4A18-B857-0A781A1EED33}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
VersionInfoVersion={#MyAppVersion}
AppCopyright=© 2021, {#MyAppPublisher}
AppPublisher={#MyAppPublisher}
AppPublisherURL="https://www.lumito.net"
AppSupportURL="https://github.com/LumitoLuma/OpenSSHforWindows-Installer/issues"
AppUpdatesURL="https://github.com/LumitoLuma/OpenSSHforWindows-Installer"
DefaultDirName={code:GetProgramFiles}\OpenSSH-Win32
AllowNoIcons=yes
DisableWelcomePage=no
DisableProgramGroupPage=yes
DisableFinishedPage=no
LicenseFile=resources/LICENSE.txt
PrivilegesRequired=admin
OutputDir=x86
ChangesEnvironment=true
OutputBaseFilename=OpenSSH-for-Windows-x86
SetupIconFile=resources/setup.ico
Compression=lzma2/ultra64
SolidCompression=yes
UninstallFilesDir={app}\Tools
UninstallDisplayName={#MyAppName}
UninstallDisplayIcon={app}\Tools\unins000.exe,0
WizardStyle=modern
WizardImageFile=resources/side.bmp
WizardSmallImageFile=resources/head.bmp

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: envPath; Description: "Add installation folder to PATH (Highly recommended)"
Name: regSSH; Description: "Register SSHD and SSH-AGENT services"

[UninstallDelete]
Type: filesandordirs; Name: "{app}";

[Files]
Source: "src-x86\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Run]
Filename: "{app}\Tools\RegisterSSH.bat"; Tasks: regSSH

[UninstallRun]
Filename: "{app}\Tools\UnregisterSSH.bat"; Tasks: regSSH; RunOnceId: regSSH

[Code]
procedure CurStepChanged(CurStep: TSetupStep);
begin
    if CurStep = ssPostInstall 
     then EnvAddPath(ExpandConstant('{app}'));
end;

procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
begin
    if CurUninstallStep = usPostUninstall
    then EnvRemovePath(ExpandConstant(';{app}'));
end;

function GetProgramFiles(Param: string): string;
begin
  if IsWin64 then Result := ExpandConstant('{pf64}')
    else Result := ExpandConstant('{pf32}')
end;

function UninstallNeedRestart(): Boolean;
begin
  Result := True;
end;
