@echo off
rem @echo opening %1 with %2 switch

rem set variable for powerpoint location
SET _locSubl="E:\Apps\Sublime Text 2.0.2\sublime_text.exe"

:parse
rem If there are no args, end it
IF "%~1"=="" GOTO call %_locSubl%

call %_locSubl% %1

:endparse
rem remove all created variables
SET _locSubl=
EXIT /B rem exits batch file
rem pause