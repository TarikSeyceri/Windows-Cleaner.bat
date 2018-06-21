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

cls
