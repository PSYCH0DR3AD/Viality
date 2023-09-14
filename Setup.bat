@echo off
echo Checking for .NET Framework 4.8...

:: Check the registry for .NET Framework 4.8
reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Full" /v Version | findstr /i "4.8"

:: Check the error code of the previous command
if %errorlevel%==0 (
    echo .NET Framework 4.8 is installed.
    
    :: Launch Viality_Launcher.exe from the same folder as the batch script
    start "" "%~dp0Viality_Launcher.exe"
) else (
    echo .NET Framework 4.8 is not installed.
    echo Please download and install it manually from Microsoft's website.
)

:: Pause to keep the command prompt window open for viewing the result
pause
