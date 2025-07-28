@echo off

:Slist
echo ====== Active TCP Ports ======
netstat -aon | findstr LISTENING
echo.

:START
setlocal

:: get port number
set /p PORT=Enter a port number (or type 'quit' to exit or type list to show list again): 
if /i "%PORT%"=="quit" goto END
if /i "%PORT%"=="list" goto Slist

echo  Scanning for processes using port %PORT% ...
for /f "tokens=5" %%a in ('netstat -aon ^| findstr :%PORT%') do (
    set PID=%%a
)

:: if pid not founded
if not defined PID (
    echo  No process found using port %PORT%.
    goto START
)

:: show the program that using pid
echo  Found PID: %PID%
tasklist /FI "PID eq %PID%"
echo.

:: ask to kil
set /p KILL=Do you want to kill this process? (y/n): 
if /i "%KILL%"=="y" (
    taskkill /PID %PID% /F
    echo  Process %PID% killed.
) else (
    echo  Skipping kill.
)

echo.
goto START

:END
echo  Exiting script.
exit /b
