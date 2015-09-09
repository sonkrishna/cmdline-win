@echo off


SET _locGo="."
SET _drive="E"

:parse
rem If there are no args, end it
IF "%~1"=="" GOTO endparse

rem set variable for desired location
IF "%~1"=="ciber" SET _locGo="E:\Krishna\Ciber"
IF "%~1"=="per" SET _locGo="E:\Krishna\personal"
IF "%~1"=="cmd" SET _locGo="E:\Krishna\personal\testcodes\cmdline"

IF "%~1"=="cord" SET _locGo="E:\Krishna\Ciber\Codes\Learn\Cordova"
IF "%~1"=="hindex" SET _locGo="E:\Krishna\Ciber\projects\hindex"

IF "%~1"=="drop" (
	SET _locGo="C:\Users\kpodila\Dropbox" 
	SET _drive="C"
)

IF %_drive%=="E" E:
IF %_drive%=="C" C:

cd %_locGo%
:endparse
rem remove all created variables
set _locGo=
rem pause