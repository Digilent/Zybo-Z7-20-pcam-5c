@echo off
rem save current working directory
pushd %~dp0

rem delete all files from subfolders
for /d /r %%i in (*) do del /f /q %%i\*
rem delete all subfolders
for /d %%i in (*) do rd /S /Q %%i

rem unmark read only from all files
attrib -R .\* /S

rem mark read only those we wish to keep
attrib +R .\cleanup.sh
attrib +R .\cleanup.cmd

rem delete all non read-only
del /Q /A:-R .\*

rem unmark read-only
attrib -R .\*

rem restore original working directory
popd