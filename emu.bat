@echo off
rem @echo opening %1 with %2 switch

:parse
rem If there are no args, end it
IF "%~1"=="" (emulator -avd nex5_1080_1920)
IF NOT "%~1"=="" (emulator -avd %~1)

:endparse
rem remove all created variables
set _locPPT=
rem pause