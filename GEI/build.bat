@echo off
echo Hello! Welcome to the automated GEI compiler for win32! This compiles GEI Chatbot for Windows! (Not supported on Linux or Unix-OS)
pause
cls
fpc.exe GEI.PAS
fpc.exe INIT.PAS
fpc.exe LINK.PAS
fpc.exe WRITER.PAS
mkdir build
move *.exe build\
cls
echo cleaning files up...
pause
del GEI.PAS
del INIT.PAS
del LINK.PAS
del WRITER.PAS
cls
echo Getting some things ready...
pause
move load.bat build\
cls
echo installation finished!
pause
exit
