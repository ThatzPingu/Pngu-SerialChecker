:start
echo off
cls
title Speed Services
color 04

@echo off
@echo [SMBIOS UUID]
@echo off 
wmic csproduct get uuid
@echo [BIOS]
@echo off 
wmic bios get serialnumber
@echo [MOTHERBOARD]
@echo off 
wmic baseboard get serialnumber
@echo [CPU/PROCESSOR]
@echo off 
wmic cpu get serialnumber
@echo [HARDDRIVES]
@echo off 
wmic diskdrive get serialnumber
@echo [MEMORYCHIPS]
@echo off 
wmic memorychip get serialnumber
@echo [GPU/GRAPHIC CARDS]
@echo off 
wmic PATH Win32_VideoController GET PNPDeviceID
@echo [MONITOR]
@echo off 
wmic desktopmonitor get pnpdeviceid
@echo [MAC ADRESSES]
@echo off 
getmac
@echo off 
pause>nul
goto start
