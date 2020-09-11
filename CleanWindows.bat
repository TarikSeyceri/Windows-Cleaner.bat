rem This script was written by Tarik Seyceri - Published in 2018
rem email: tarik@seyceri.info
cls

@echo off

del /s /f /q %WinDir%\temp\*.*
del /s /f /q %WinDir%\Prefetch\*.*
del /s /f /q %Temp%\*.*
del /s /f /q %AppData%\temp\*.*
del /s /f /q %HomePath%\AppData\LocalLow\temp\*.*

rd /s /q %WinDir%\temp
rd /s /q %WinDir%\Prefetch
rd /s /q %Temp%
rd /s /q %AppData%\temp
rd /s /q %HomePath%\AppData\LocalLow\temp

md %WinDir%\temp
md %WinDir%\Prefetch
md %Temp%
md %AppData%\temp
md %HomePath%\AppData\LocalLow\temp

takeown /F %SYSTEMDRIVE%\Windows.old\* /R /A
echo Y | cacls %SYSTEMDRIVE%\Windows.old\*.* /T /grant administrators:F
echo "Please wait, this may take a while."
rmdir /S /Q %SYSTEMDRIVE%\Windows.old\

echo.
echo "Windows Clean Up Done!, You can exit by pressing any key."
echo.

pause
