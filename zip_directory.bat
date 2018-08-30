@ECHO OFF

IF [%1]==[] GOTO usage
IF [%2]==[] GOTO usage

SET ORIGINALDIR=%CD%

PUSHD %1
"%~dp0\zip.exe" -r -q "%originaldir%\%2" levelshots\*.*
POPD

GOTO :eof

:usage
ECHO usage: zip_directory.bat input_directory output_filename