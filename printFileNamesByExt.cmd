@echo off
setlocal enableDelayedExpansion
for /f %%G in ('forfiles /s /m *.php /c "cmd /c echo @path"') do (
  set _name=%%G
  rem strip the quotes
  echo !_name:~1,-1! >> listoffiles.txt
  )
endlocal disableDelayedExpansion
exit
