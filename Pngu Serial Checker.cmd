@echo off
mode con: cols=70 lines=45
chcp 65001
title Pngu Serial Checker
:Main
cls
echo.
echo               ╔════════════════════════════╗ 
echo               ║        ╔═╗╔╗╔╔═╗╦ ╦        ║ 
echo               ║        ╠═╝║║║║ ╦║ ║        ║
echo               ║        ╩  ╝╚╝╚═╝╚═╝        ║      
echo               ╚════════════════════════════╝      
echo        ╔═════════════════════════════════════════╗
echo        ║          [Pngu Serial Checker]          ║
echo        ║      https://discord.gg/p2qhYvRrb8      ║
echo        ╚═════════════════════════════════════════╝
echo.
echo [Bios Information]
wmic bios get serialnumber
echo [System UUID]
wmic csproduct get uuid
echo [CPU Information]
wmic cpu get serialnumber, processorid
echo [Disk Drive Information]
wmic diskdrive get serialnumber
echo [Baseboard Information]
wmic baseboard get manufacturer, serialnumber
echo [Network Adapter MAC Address]
wmic path Win32_NetworkAdapter where "PNPDeviceID like '%%PCI%%' AND NetConnectionStatus=2 AND AdapterTypeID='0'" get MacAddress
echo.
echo Press ENTER to refresh...
pause >nul
cls
goto Main