SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

InfoFile = Info.txt

FileDelete, %InfoFile%

FileSelectFile, FileSelected, 3,, Select The File You Need Help With, *.ahk
SplitPath, FileSelected , FileName, FileDir, FileExtension, FileNameNoExt, FileDrive

FileRead, Code, %FileSelected%

A_NowMTG:=A_NowUTC
FileAppend,
(
[%A_NowMTG%]
A_AhkVersion: %A_AhkVersion%
A_IsUnicode: %A_IsUnicode%
A_IsCompiled: %A_IsCompiled%
ComSpec: %ComSpec%
A_OSType: %A_OSType%
A_OSVersion: %A_OSVersion%
A_Is64bitOS: %A_Is64bitOS%
A_Language: %A_Language%
A_IsAdmin: %A_IsAdmin%
A_ScreenWidth: %A_ScreenWidth%
A_ScreenHeight: %A_ScreenHeight%
A_ScreenDPI: %A_ScreenDPI%


<<=======================================================================================================>>
%FileSelected%

File: %FileName%
Dir: %FileDir%
Ext: %FileExtension%
Name No Ext: %FileNameNoExt%
Drive: %FileDrive%
<<=======================================================================================================>>
%Code%
<<=======================================================================================================>>
), %InfoFile%



MsgBox, 64, AHK Info,
(
Info about your system:
A_AhkVersion: %A_AhkVersion%
A_IsUnicode: %A_IsUnicode%
A_IsCompiled: %A_IsCompiled%
ComSpec: %ComSpec%
A_OSType: %A_OSType%
A_OSVersion: %A_OSVersion%
A_Is64bitOS: %A_Is64bitOS%
A_Language: %A_Language%
A_IsAdmin: %A_IsAdmin%
A_ScreenWidth: %A_ScreenWidth%
A_ScreenHeight: %A_ScreenHeight%
A_ScreenDPI: %A_ScreenDPI%

This info has been saved to %InfoFile%`nPlease copy that and send it to whoever needs the info.
)
