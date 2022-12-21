@ECHO OFF

REM AUTOMATED VARIABLES BELOW, DO NOT CHANGE
REM Get current folder
set drive=%~dp0
set drivep=%drive%
if #%drive:~-1%# == #\# set drivep=%drive:~0,-1%
set "drivep=%drivep:\=/%"

REM Set the variables and folder for of this pack
SET ONETHINX_PACK_LOC=%drivep%
ECHO Set ONETHINX_PACK_LOC: %ONETHINX_PACK_LOC%
SETX ONETHINX_PACK_LOC %ONETHINX_PACK_LOC%

SET ONETHINX_SVD_LOC=%ONETHINX_PACK_LOC%/devices/svd
ECHO Set ONETHINX_SVD_LOC: %ONETHINX_SVD_LOC%
SETX ONETHINX_SVD_LOC %ONETHINX_SVD_LOC%

SET ONETHINX_COMPILER_LOC=%ONETHINX_PACK_LOC%/gcc-arm-none-eabi-10.3-2021.10/bin
ECHO Set ONETHINX_COMPILER_LOC: %ONETHINX_COMPILER_LOC%
SETX ONETHINX_COMPILER_LOC %ONETHINX_COMPILER_LOC%

SET ONETHINX_TOOLS_LOC=%ONETHINX_PACK_LOC%/tools_3.0
ECHO Set ONETHINX_TOOLS_LOC: %ONETHINX_TOOLS_LOC%
SETX ONETHINX_TOOLS_LOC %ONETHINX_TOOLS_LOC%

REM Set the Path to the CMake executable
%drivep%\PackSetup\pathed /REMOVE %ONETHINX_PACK_LOC%/CMake/bin /USER && %drivep%\PackSetup\pathed /ADD %ONETHINX_PACK_LOC%/CMake/bin /USER
REM Set the Path to the Make executable
%drivep%\PackSetup\pathed /REMOVE %ONETHINX_PACK_LOC%/mingw-make /USER && %drivep%\PackSetup\pathed /ADD %ONETHINX_PACK_LOC%/mingw-make /USER
REM Set the Path to the Compiler
%drivep%\PackSetup\pathed /REMOVE %ONETHINX_COMPILER_LOC% /USER && %drivep%\PackSetup\pathed /ADD %ONETHINX_COMPILER_LOC% /USER

@ECHO. 
@ECHO Done, Please restart your machine!
@ECHO PRESS ENTER TO EXIT
SET /p input=
