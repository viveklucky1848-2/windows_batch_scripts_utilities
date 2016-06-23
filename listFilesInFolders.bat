REM Make a list of files in the current directory recursively with their full paths
dir /b /s /a:-D > <filename>.txt
dir /b /s /a:-D > modfiles.txt

REM Make a list of files of current folder recursively with their file sizes
@echo off & for /f %a in ('dir /s /b') do echo %~fa %~za
Or
@echo Results on %DATE% for %CD% >> YourDirFile.txt & echo off & for /f "delims=*" %A in ('dir /s /b /a:-d') do echo %~fA %~zA >> modfiles.txt
@echo off & for /f %A in ('dir /s /b /a:-d') do echo %~zA %~fA %~zA
@echo off & for /f "delims=*" %A in ('dir /s /b /a:-d') do echo %~fA %~zA
REM Or
FORFILES /S /M *.doc /C "cmd /c echo @fsize"
FORFILES /M *.txt /C "cmd /c if @isdir==FALSE notepad.exe @file"
REM Or
forfiles /s /c "cmd /c if @isdir==FALSE echo @path @fsize" >> <filename>.txt
forfiles /s /c "cmd /c if @isdir==FALSE echo @path @fsize" >> filesList.txt
forfiles /s  /c "cmd /c if @isdir==FALSE echo @path @fsize"
for /r %i in (*) do @echo %~ni
for /r %i in (*) do @echo %~nxi
dir /s /b *.mp3
dir /s /b *.php

setlocal EnableDelayedExpansion
for /L %%n in (1 1 500) do if "!__cd__:~%%n,1!" neq "" set /a "len=%%n+1"
setlocal DisableDelayedExpansion
for /r . %%g in (*.log) do (
  set "absPath=%%g"
  setlocal EnableDelayedExpansion
  set "relPath=!absPath:~%len%!"
  echo(!relPath!
  endlocal
)
