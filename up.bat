@echo off


SET _locGo="."

:parse
rem If there are no args, end it
IF "%~1"=="" GOTO endparse

rem set variable for desired location
FOR /L %%i IN (1, 1, %~1) DO cd..

:endparse
rem remove all created variables
set _locGo=
rem pause