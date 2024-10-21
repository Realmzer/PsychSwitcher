::::::::::::::::::::::::::::::::::::::::::::
::        Getting Admin Permissions       ::
::::::::::::::::::::::::::::::::::::::::::::
@echo off
color 0a
CLS
ECHO.
ECHO =============================
ECHO Running Admin shell
ECHO =============================

:init
setlocal DisableDelayedExpansion
set "batchPath=%~0"
for %%k in (%0) do set batchName=%%~nk
set "vbsGetPrivileges=%temp%\OEgetPriv_%batchName%.vbs"
setlocal EnableDelayedExpansion

:checkPrivileges
NET FILE 1>NUL 2>NUL
if '%errorlevel%' == '0' ( goto gotPrivileges ) else ( goto getPrivileges )

:getPrivileges
if '%1'=='ELEV' (echo ELEV & shift /1 & goto gotPrivileges)
ECHO.
ECHO **************************************
ECHO Invoking UAC for Privilege Escalation
ECHO **************************************

ECHO Set UAC = CreateObject^("Shell.Application"^) > "%vbsGetPrivileges%"
ECHO args = "ELEV " >> "%vbsGetPrivileges%"
ECHO For Each strArg in WScript.Arguments >> "%vbsGetPrivileges%"
ECHO args = args ^& strArg ^& " "  >> "%vbsGetPrivileges%"
ECHO Next >> "%vbsGetPrivileges%"
ECHO UAC.ShellExecute "!batchPath!", args, "", "runas", 1 >> "%vbsGetPrivileges%"
"%SystemRoot%\System32\WScript.exe" "%vbsGetPrivileges%" %*
exit /B

:gotPrivileges
setlocal & pushd .
cd /d %~dp0
if '%1'=='ELEV' (del "%vbsGetPrivileges%" 1>nul 2>nul  &  shift /1)

cd ..


:Prompt
cls
color 0a
title Funkin Switcher Compiler - Select Platform
echo Funkin Switcher Compiler
echo Select a Platform to Compile to:
echo -------------------------------
echo 1 - Windows - Requires Windows10SDK.19041
echo 2 - Mac
echo 3 - Linux - Requires VLC
echo 4 - Android
echo 5 - IOS
echo 6 - CPP
echo C - Close Script
echo -------------------------------
echo Default target is windows.
set /p menu=Type option:
if "%menu%"=="1" goto compWindows
if "%menu%"=="2" goto compMac
if "%menu%"=="3" goto compLinux
if "%menu%"=="4" goto compAndroid
if "%menu%"=="5" goto compIOS
if "%menu%"=="6" goto compCPP
if "%menu%"=="C" goto Close
if "%menu%"=="c" goto Close
pause >nul

:compWindows
title Funkin Switcher Compiler - Compiling Windows
echo Compiling For Windows
haxelib run lime test windows
echo ---
echo 1 - Close the script
echo 2 - Go back to platform selection
set /p menu=Type option:
if "%menu%"=="1" goto Close
if "%menu%"=="2" goto Prompt

:compMac
title Funkin Switcher Compiler - Compiling Mac
echo Compiling For Mac
haxelib run lime test mac
echo ---
echo 1 - Close the script
echo 2 - Go back to platform selection
set /p menu=Type option:
if "%menu%"=="1" goto Close
if "%menu%"=="2" goto Prompt

:compLinux
title Funkin Switcher Compiler - Compiling Linux
echo Compiling For Linux
haxelib run lime test linux
echo ---
echo 1 - Close the script
echo 2 - Go back to platform selection
set /p menu=Type option:
if "%menu%"=="1" goto Close
if "%menu%"=="2" goto Prompt

:compAndroid
title Funkin Switcher Compiler - Compiling Android
echo Compiling For Android
haxelib run lime test android
echo ---
echo 1 - Close the script
echo 2 - Go back to platform selection
set /p menu=Type option:
if "%menu%"=="1" goto Close
if "%menu%"=="2" goto Prompt

:compIOS
title Funkin Switcher Compiler - Compiling IOS
echo Compiling For IOS
haxelib run lime test ios
echo ---
echo 1 - Close the script
echo 2 - Go back to platform selection
set /p menu=Type option:
if "%menu%"=="1" goto Close
if "%menu%"=="2" goto Prompt

:compCPP
title Funkin Switcher Compiler - Compiling CPP
echo Compiling For CPP
haxelib run lime test cpp
echo ---
echo 1 - Close the script
echo 2 - Go back to platform selection
set /p menu=Type option:
if "%menu%"=="1" goto Close
if "%menu%"=="2" goto Prompt

:Close
exit