@echo off
rem @echo opening %1 with %2 switch

rem set variable for power point location
SET _locPPT="C:\Program Files (x86)\Microsoft Office\Office15\POWERPNT.EXE"

:parse
rem If there are no args, end it
IF "%~1"=="" GOTO endparse

rem If arg 2 is open or no 2nd arg --> Open file
IF "%~2"=="o" start powerpnt %2 %1
rem wrote only for pptx, 0 bytes alloc
IF "%~2"=="n" (
	fsutil file createnew "%~1.pptx" 0
	start powerpnt "%~1.pptx"
	rem echo %~1.pptx
)
IF "%~2"=="" start powerpnt %1

:endparse
rem remove all created variables
set _locPPT=
rem pause