@echo OFF

rem eXtremeWLbot ocx & dll installer.
rem credit Kick Takers, The Dragon, aa6my.

reg Query "HKLM\Hardware\Description\System\CentralProcessor\0" | find /i "x86" > NUL && set OS=32BIT || set OS=64BIT

IF /i %OS%==32BIT goto install32
IF /i %OS%==64BIT goto intall64

:install32
copy %~dp0resources\*.dll %WINDIR%\system32\ /Y
copy %~dp0resources\*.ocx %WINDIR%\system32\ /Y
regsvr32 %WINDIR%\system32\comdlg32.ocx
regsvr32 %WINDIR%\system32\mscomctl.ocx
regsvr32 %WINDIR%\system32\msflxgrd.ocx
regsvr32 %WINDIR%\system32\mswinsck.ocx
regsvr32 %WINDIR%\system32\richtx32.ocx
regsvr32 %WINDIR%\system32\tabctl32.ocx
regsvr32 %WINDIR%\system32\msstdfmt.dll
regsvr32 %WINDIR%\system32\msvbvm60.dll
regsvr32 %WINDIR%\system32\scrrun.dll

:intall64
copy %~dp0resources\*.dll %WINDIR%\SysWOW64\ /Y
copy %~dp0resources\*.ocx %WINDIR%\SysWOW64\ /Y
regsvr32 %WINDIR%\SysWOW64\comdlg32.ocx
regsvr32 %WINDIR%\SysWOW64\mscomctl.ocx
regsvr32 %WINDIR%\SysWOW64\msflxgrd.ocx
regsvr32 %WINDIR%\SysWOW64\mswinsck.ocx
regsvr32 %WINDIR%\SysWOW64\richtx32.ocx
regsvr32 %WINDIR%\SysWOW64\tabctl32.ocx
regsvr32 %WINDIR%\SysWOW64\msstdfmt.dll
regsvr32 %WINDIR%\SysWOW64\msvbvm60.dll
regsvr32 %WINDIR%\SysWOW64\scrrun.dll
