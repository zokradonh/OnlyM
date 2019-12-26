; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "OnlyM"
#define MyAppPublisher "Antony Corbett"
#define MyAppURL "https://soundboxsoftware.com"
#define MyAppExeName "OnlyM.exe"
#define MySource "d:\ProjectsPersonal\OnlyM\OnlyM"
#define SlideManagerAppExeName "OnlyMSlideManager.exe"
#define SlideManagerAppName "OnlyM Slide Manager"

#define MyAppVersion GetFileVersion(MySource + '\bin\x86\Release\OnlyM.exe');

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{35121334-5755-4473-8091-217336532D16}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\OnlyM
DefaultGroupName={#MyAppName}
OutputDir="..\Installer\Output"
OutputBaseFilename=OnlyMSetup
SetupIconFile=icon3.ico
SourceDir={#MySource}
Compression=lzma
SolidCompression=yes
AppContact=antony@corbetts.org.uk
DisableWelcomePage=false
SetupLogging=True
RestartApplications=False
CloseApplications=False
AppMutex=OnlyMMeetingMedia,OnlyMSlideManagerTool

; for CefSharp refer here: https://github.com/cefsharp/CefSharp/wiki/Output-files-description-table-(Redistribution)

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"

[Files]
Source: "bin\x86\Release\FFmpeg\*"; DestDir: "{app}\FFmpeg"; Flags: ignoreversion
Source: "bin\x86\Release\x64\*"; DestDir: "{app}\x64"; Flags: ignoreversion
Source: "bin\x86\Release\x86\*"; DestDir: "{app}\x86"; Flags: ignoreversion

Source: "bin\x86\Release\AutoMapper.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\x86\Release\CommonServiceLocator.dll"; DestDir: "{app}"; Flags: ignoreversion
; temp inclusion of updated ffme assemblies to correct subtitle bug  (awaiting fix in 2.80)
Source: "D:\ProjectsMisc\ffmediaelement-master\Unosquare.FFME.Windows.Sample\bin\Release\ffme.common.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\ProjectsMisc\ffmediaelement-master\Unosquare.FFME.Windows.Sample\bin\Release\ffme.win.dll"; DestDir: "{app}"; Flags: ignoreversion

;Source: "bin\Release\ffme.common.dll"; DestDir: "{app}"; Flags: ignoreversion
;Source: "bin\Release\ffme.win.dll"; DestDir: "{app}"; Flags: ignoreversion

Source: "bin\x86\Release\FFmpeg.AutoGen.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\x86\Release\FluentCommandLineParser.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\x86\Release\GalaSoft.MvvmLight.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\x86\Release\GalaSoft.MvvmLight.Extras.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\x86\Release\GalaSoft.MvvmLight.Platform.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\x86\Release\HtmlAgilityPack.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\x86\Release\ImageProcessor.dll"; DestDir: "{app}"; Flags: ignoreversion 
Source: "bin\x86\Release\MaterialDesignColors.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\x86\Release\MaterialDesignThemes.Wpf.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\x86\Release\Microsoft.WindowsAPICodePack.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\x86\Release\Microsoft.WindowsAPICodePack.Shell.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\x86\Release\Microsoft.WindowsAPICodePack.ShellExtensions.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\x86\Release\NAudio.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\x86\Release\Newtonsoft.Json.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\x86\Release\OnlyM.Core.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\x86\Release\OnlyM.CoreSys.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\x86\Release\OnlyM.CustomControls.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\x86\Release\OnlyM.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\x86\Release\OnlyM.exe.config"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\x86\Release\OnlyM.Slides.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\x86\Release\OnlyMMirror.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\x86\Release\policy.2.0.taglib-sharp.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\x86\Release\Serilog.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\x86\Release\Serilog.Sinks.Console.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\x86\Release\Serilog.Sinks.File.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\x86\Release\Serilog.Sinks.RollingFile.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\x86\Release\System.Data.SQLite.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\x86\Release\System.ValueTuple.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\x86\Release\System.Windows.Interactivity.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\x86\Release\taglib-sharp.dll"; DestDir: "{app}"; Flags: ignoreversion

; Slide manager
Source: "..\OnlyMSlideManager\bin\Release\OnlyMSlideManager.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\OnlyMSlideManager\bin\Release\OnlyMSlideManager.exe.config"; DestDir: "{app}"; Flags: ignoreversion

; localisation..
Source: "bin\x86\Release\bg-BG\*.dll"; DestDir: "{app}\bg-BG"; Flags: ignoreversion
Source: "bin\x86\Release\ca-ES\*.dll"; DestDir: "{app}\ca-ES"; Flags: ignoreversion
Source: "bin\x86\Release\cs-CZ\*.dll"; DestDir: "{app}\cs-CZ"; Flags: ignoreversion
Source: "bin\x86\Release\de-DE\*.dll"; DestDir: "{app}\de-DE"; Flags: ignoreversion
Source: "bin\x86\Release\el-GR\*.dll"; DestDir: "{app}\el-GR"; Flags: ignoreversion
Source: "bin\x86\Release\en-US\*.dll"; DestDir: "{app}\en-US"; Flags: ignoreversion
Source: "bin\x86\Release\es-ES\*.dll"; DestDir: "{app}\es-ES"; Flags: ignoreversion
Source: "bin\x86\Release\es-MX\*.dll"; DestDir: "{app}\es-MX"; Flags: ignoreversion
Source: "bin\x86\Release\fi-FI\*.dll"; DestDir: "{app}\fi-FI"; Flags: ignoreversion
Source: "bin\x86\Release\fr-FR\*.dll"; DestDir: "{app}\fr-FR"; Flags: ignoreversion
Source: "bin\x86\Release\hr-HR\*.dll"; DestDir: "{app}\hr-HR"; Flags: ignoreversion
Source: "bin\x86\Release\hu-HU\*.dll"; DestDir: "{app}\hu-HU"; Flags: ignoreversion
Source: "bin\x86\Release\it-IT\*.dll"; DestDir: "{app}\it-IT"; Flags: ignoreversion
Source: "bin\x86\Release\ka-GE\*.dll"; DestDir: "{app}\ka-GE"; Flags: ignoreversion
; Source: "bin\x86\Release\lv-LV\*.dll"; DestDir: "{app}\lv-LV"; Flags: ignoreversion
Source: "bin\x86\Release\nl-NL\*.dll"; DestDir: "{app}\nl-NL"; Flags: ignoreversion
Source: "bin\x86\Release\no\*.dll"; DestDir: "{app}\no"; Flags: ignoreversion
; don't include this - Source: "bin\x86\Release\no-NO\*.dll"; DestDir: "{app}\no"; Flags: ignoreversion
Source: "bin\x86\Release\pap\*.dll"; DestDir: "{app}\pap"; Flags: ignoreversion
; don't include this - Source: "bin\x86\Release\pap-PAP\*.dll"; DestDir: "{app}\pap"; Flags: ignoreversion
Source: "bin\x86\Release\pl-PL\*.dll"; DestDir: "{app}\pl-PL"; Flags: ignoreversion
Source: "bin\x86\Release\pt-BR\*.dll"; DestDir: "{app}\pt-BR"; Flags: ignoreversion
Source: "bin\x86\Release\pt-PT\*.dll"; DestDir: "{app}\pt-PT"; Flags: ignoreversion
Source: "bin\x86\Release\ro-RO\*.dll"; DestDir: "{app}\ro-RO"; Flags: ignoreversion
Source: "bin\x86\Release\ru-RU\*.dll"; DestDir: "{app}\ru-RU"; Flags: ignoreversion
Source: "bin\x86\Release\sk-SK\*.dll"; DestDir: "{app}\sk-SK"; Flags: ignoreversion
Source: "bin\x86\Release\sv-SE\*.dll"; DestDir: "{app}\sv-SE"; Flags: ignoreversion
Source: "bin\x86\Release\tr-TR\*.dll"; DestDir: "{app}\tr-TR"; Flags: ignoreversion
Source: "bin\x86\Release\vi-VN\*.dll"; DestDir: "{app}\vi-VN"; Flags: ignoreversion

; SlideManager localisation
Source: "..\OnlyMSlideManager\bin\Release\bg-BG\*.dll"; DestDir: "{app}\bg-BG"; Flags: ignoreversion
Source: "..\OnlyMSlideManager\bin\Release\ca-ES\*.dll"; DestDir: "{app}\ca-ES"; Flags: ignoreversion
Source: "..\OnlyMSlideManager\bin\Release\cs-CZ\*.dll"; DestDir: "{app}\cs-CZ"; Flags: ignoreversion
Source: "..\OnlyMSlideManager\bin\Release\de-DE\*.dll"; DestDir: "{app}\de-DE"; Flags: ignoreversion
Source: "..\OnlyMSlideManager\bin\Release\el-GR\*.dll"; DestDir: "{app}\el-GR"; Flags: ignoreversion
Source: "..\OnlyMSlideManager\bin\Release\en-US\*.dll"; DestDir: "{app}\en-US"; Flags: ignoreversion
Source: "..\OnlyMSlideManager\bin\Release\es-ES\*.dll"; DestDir: "{app}\es-ES"; Flags: ignoreversion
Source: "..\OnlyMSlideManager\bin\Release\es-MX\*.dll"; DestDir: "{app}\es-MX"; Flags: ignoreversion
Source: "..\OnlyMSlideManager\bin\Release\fi-FI\*.dll"; DestDir: "{app}\fi-FI"; Flags: ignoreversion
Source: "..\OnlyMSlideManager\bin\Release\fr-FR\*.dll"; DestDir: "{app}\fr-FR"; Flags: ignoreversion
Source: "..\OnlyMSlideManager\bin\Release\hr-HR\*.dll"; DestDir: "{app}\hr-HR"; Flags: ignoreversion
Source: "..\OnlyMSlideManager\bin\Release\hu-HU\*.dll"; DestDir: "{app}\hu-HU"; Flags: ignoreversion
Source: "..\OnlyMSlideManager\bin\Release\it-IT\*.dll"; DestDir: "{app}\it-IT"; Flags: ignoreversion
Source: "..\OnlyMSlideManager\bin\Release\ka-GE\*.dll"; DestDir: "{app}\ka-GE"; Flags: ignoreversion
; Source: "..\OnlyMSlideManager\bin\Release\lv-LV\*.dll"; DestDir: "{app}\lv-LV"; Flags: ignoreversion
Source: "..\OnlyMSlideManager\bin\Release\nl-NL\*.dll"; DestDir: "{app}\nl-NL"; Flags: ignoreversion
Source: "..\OnlyMSlideManager\bin\Release\no\*.dll"; DestDir: "{app}\no"; Flags: ignoreversion
; don't include this - Source: "bin\Release\no-NO\*.dll"; DestDir: "{app}\no"; Flags: ignoreversion
Source: "..\OnlyMSlideManager\bin\Release\pap\*.dll"; DestDir: "{app}\pap"; Flags: ignoreversion
; don't include this - Source: "bin\Release\pap-PAP\*.dll"; DestDir: "{app}\pap"; Flags: ignoreversion
Source: "..\OnlyMSlideManager\bin\Release\pl-PL\*.dll"; DestDir: "{app}\pl-PL"; Flags: ignoreversion
Source: "..\OnlyMSlideManager\bin\Release\pt-BR\*.dll"; DestDir: "{app}\pt-BR"; Flags: ignoreversion
Source: "..\OnlyMSlideManager\bin\Release\pt-PT\*.dll"; DestDir: "{app}\pt-PT"; Flags: ignoreversion
Source: "..\OnlyMSlideManager\bin\Release\ro-RO\*.dll"; DestDir: "{app}\ro-RO"; Flags: ignoreversion
Source: "..\OnlyMSlideManager\bin\Release\ru-RU\*.dll"; DestDir: "{app}\ru-RU"; Flags: ignoreversion
Source: "..\OnlyMSlideManager\bin\Release\sk-SK\*.dll"; DestDir: "{app}\sk-SK"; Flags: ignoreversion
Source: "..\OnlyMSlideManager\bin\Release\sv-SE\*.dll"; DestDir: "{app}\sv-SE"; Flags: ignoreversion
Source: "..\OnlyMSlideManager\bin\Release\tr-TR\*.dll"; DestDir: "{app}\tr-TR"; Flags: ignoreversion
Source: "..\OnlyMSlideManager\bin\Release\vi-VN\*.dll"; DestDir: "{app}\vi-VN"; Flags: ignoreversion

; CefSharp files...
Source: "bin\x86\Release\locales\*"; DestDir: "{app}\locales"; Flags: ignoreversion
Source: "bin\x86\Release\swiftshader\*"; DestDir: "{app}\swiftshader"; Flags: ignoreversion
Source: "bin\x86\Release\cef*.pak"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\x86\Release\CefSharp*.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\x86\Release\CefSharp.BrowserSubprocess.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\x86\Release\chrome_elf.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\x86\Release\d3dcompiler_47.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\x86\Release\devtools_resources.pak"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\x86\Release\icudtl.dat"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\x86\Release\libcef.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\x86\Release\libEGL.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\x86\Release\libGLESv2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\x86\Release\natives_blob.bin"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\x86\Release\snapshot_blob.bin"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\x86\Release\v8_context_snapshot.bin"; DestDir: "{app}"; Flags: ignoreversion

; c rtl required by CefSharp
; I have chosen to install locally to allow for "xcopy" style install
Source: "..\VCRTL\*"; DestDir: "{app}"; Flags: ignoreversion

; web shortcuts...
Source: "..\UrlLinkFiles\JW Broadcasting.url"; DestDir: "{commonappdata}\OnlyM\Websites"
Source: "..\UrlLinkFiles\JW.org website.url"; DestDir: "{commonappdata}\OnlyM\Websites"
Source: "..\UrlLinkFiles\Watchtower online library.url"; DestDir: "{commonappdata}\OnlyM\Websites"


; remove legacy shortcuts (wrongly named SlideManagerAppExeName instead of SlideManagerAppName)
[InstallDelete]
Type: files; Name: "{group}\{#SlideManagerAppExeName}.lnk"
Type: files; Name: "{commondesktop}\{#SlideManagerAppExeName}.lnk"

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{#SlideManagerAppName}"; Filename: "{app}\{#SlideManagerAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{commondesktop}\{#SlideManagerAppName}"; Filename: "{app}\{#SlideManagerAppExeName}"; Tasks: desktopicon

[ThirdParty]
UseRelativePaths=True

