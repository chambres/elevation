@echo off
for /F "tokens=1,2" %%i in ('tasklist') do (
 if "%%i" equ "cmd.exe" (set x=%%j)
)
powershell -Command "Start-Process commandprompt.bat %CD% -Verb RunAs" 

exit