@echo off
SETLOCAL

:: Check if Visual Studio's environment variables are set
CALL "C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Auxiliary\Build\vcvars64.bat"

:: Set the compiler flags
SET COMPILER_FLAGS=/W3 /EHsc
SET LINKER_FLAGS=

:: Check for debug flag
IF "%1"=="debug" (
    SET COMPILER_FLAGS=%COMPILER_FLAGS% /Zi /Od
    SET LINKER_FLAGS=/DEBUG
)

:: Compile and link the program
cl %COMPILER_FLAGS% part1.c /link %LINKER_FLAGS%

ENDLOCAL
