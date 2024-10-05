@echo off
title GEI v 1.1
:menu
cls
echo GEI v 1.1 - fork of Daisy 1.1 but with enhancements. copyright dgrtygry2.
echo.
echo What would you like to do?
echo.
echo 1. Load GEI (GEI.EXE)
echo 2. Clear GEI's memory (INIT.EXE)
echo 3. Link GEI Bots (LINK.EXE)
echo.
for /f "tokens=1-4 delims=/ " %%a in ('echo %date%') do set mydate=%%a-%%b-%%c
for /f "tokens=1-2 delims=: " %%a in ('echo %time%') do set mytime=%%a:%%b
echo Time remaining: %mytime%
echo.
set /p choice=Choose an option (1-3): 

if "%choice%"=="1" goto load_gei
if "%choice%"=="2" goto clear_memory
if "%choice%"=="3" goto link_bots
echo Invalid choice. Please select 1, 2, or 3.
pause
goto menu

:load_gei
cls
echo Loading GEI...
GEI.EXE
pause
goto menu

:clear_memory
cls
echo Clearing GEI's memory...
INIT.EXE
pause
goto menu

:link_bots
cls
echo Linking GEI Bots...
LINK.EXE
pause
goto menu
