@echo off
title Pngu Serial Checker
chcp 65001
color f0
mode con: cols=90 lines=52
:Main
echo.
echo    [30m       ██████╗ ██╗███╗   ██╗ ██████╗ ██╗   ██╗         
echo           ██╔══██╗██║████╗  ██║██╔════╝ ██║   ██║         
echo           ██████╔╝██║██╔██╗ ██║██║  ███╗██║   ██║         
echo           ██╔═══╝ ██║██║╚██╗██║██║   ██║██║   ██║         
echo           ██║     ██║██║ ╚████║╚██████╔╝╚██████╔╝         
echo           ╚═╝     ╚═╝╚═╝  ╚═══╝ ╚═════╝  ╚═════╝          
echo.
echo        ╔═════════════════════════════════════════╗
echo        ║          [Pngu Serial Checker]          ║
echo        ╚═════════════════════════════════════════╝
echo.
echo [32m[40mBios Information[0m
wmic bios get serialnumber
::::::::::::::::::::::::::::::::::::::::::::::
echo [32m[40m[Disk Drive Information][0m
wmic diskdrive get model, serialnumber
::::::::::::::::::::::::::::::::::::::::::::::
echo [32m[40m[Motherboard Information][0m
wmic baseboard get manufacturer, serialnumber
::::::::::::::::::::::::::::::::::::::::::::::
echo [32m[40m[SMbios Information][0m
wmic path win32_computersystemproduct get uuid
::::::::::::::::::::::::::::::::::::::::::::::
echo [32m[40m[GPU Information][0m
wmic PATH Win32_VideoController GET Description,PNPDeviceID
::::::::::::::::::::::::::::::::::::::::::::::
echo [32m[40m[RAM Information][0m
wmic memorychip get serialnumber
::::::::::::::::::::::::::::::::::::::::::::::
echo [32m[40m[System UUID][0m
wmic csproduct get uuid
::::::::::::::::::::::::::::::::::::::::::::::
echo [32m[40m[CPU Information][0m
wmic cpu get serialnumber, processorid
::::::::::::::::::::::::::::::::::::::::::::::
echo [32m[40m[MacAddress Information][0m
wmic path Win32_NetworkAdapter where "PNPDeviceID like '%%PCI%%' AND NetConnectionStatus=2 AND AdapterTypeID='0'" get MacAddress
getmac
echo.[107m
PAUSE
cls
goto Main
