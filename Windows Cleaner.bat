rem This script was written by Tarik Seyceri - Published in 2018
rem email: tarik@seyceri.info
cls

@echo off

rem Check If User Has Admin Privileges
NET SESSION >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    echo Running..
) else (
    echo You must run me as an Administrator. Exiting..
    echo.
    pause
    exit
)

echo.

rem Delete Temporary Files
del /s /f /q %WinDir%\Temp\*.*
del /s /f /q %WinDir%\Prefetch\*.*
del /s /f /q %Temp%\*.*
del /s /f /q %AppData%\Temp\*.*
del /s /f /q %HomePath%\AppData\LocalLow\Temp\*.*

rem Delete Temporary Folders
rd /s /q %WinDir%\Temp
rd /s /q %WinDir%\Prefetch
rd /s /q %Temp%
rd /s /q %AppData%\Temp
rd /s /q %HomePath%\AppData\LocalLow\Temp

rem Recreate Empty Temporary Folders
md %WinDir%\Temp
md %WinDir%\Prefetch
md %Temp%
md %AppData%\Temp
md %HomePath%\AppData\LocalLow\Temp

rem Edit Windows.old Folder Privileges and Deleting It
takeown /F %SYSTEMDRIVE%\Windows.old\* /R /A /D Y
echo Y | cacls %SYSTEMDRIVE%\Windows.old\*.* /T /grant administrators:F
echo Please wait, this may take a while.
rmdir /S /Q %SYSTEMDRIVE%\Windows.old\

echo.
echo Windows Clean Up Done!, You can exit by pressing any key.
echo.

pause
