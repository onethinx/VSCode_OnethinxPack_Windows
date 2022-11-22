@ECHO OFF
REM Get current folder
set drive=%~dp0
set drivep=%drive%
if #%drive:~-1%# == #\# set drivep=%drive:~0,-1%

REM Remove the Path to the CMake executable
%drivep%\PackSetup\pathed /REMOVE %ONETHINX_PACK_LOC%/CMake/bin /USER
REM Remove the Path to the Make executable
%drivep%\PackSetup\pathed /REMOVE %ONETHINX_PACK_LOC%/mingw-make /USER
REM Remove the Path to the Compiler
%drivep%\PackSetup\pathed /REMOVE %ONETHINX_COMPILER_LOC% /USER

REM Remove location of this pack variable
SET ONETHINX_PACK_LOC=
REG delete HKCU\Environment /F /V ONETHINX_PACK_LOC

REM Remove the PDL version (must match the folder name of the PDL!)
SET ONETHINX_PDL_VERSION=
REG delete HKCU\Environment /F /V ONETHINX_PDL_VERSION

REM Remove the Compiler version (must match the folder name of the Compiler!)
SET ONETHINX_COMPILER_VERSION=
REG delete HKCU\Environment /F /V ONETHINX_COMPILER_VERSION

REM Remove the Compiler version (must match the folder name of the Compiler!)
SET ONETHINX_TOOLS_VERSION=
REG delete HKCU\Environment /F /V ONETHINX_TOOLS_VERSION

SET ONETHINX_PDL_LOC=
REG delete HKCU\Environment /F /V ONETHINX_PDL_LOC
SET ONETHINX_SVD_LOC=
REG delete HKCU\Environment /F /V ONETHINX_SVD_LOC
SET ONETHINX_COMPILER_LOC=
REG delete HKCU\Environment /F /V ONETHINX_COMPILER_LOC
SET ONETHINX_TOOLS_LOC=
REG delete HKCU\Environment /F /V ONETHINX_TOOLS_LOC

@ECHO. 
@ECHO Done, Please restart your machine!
@ECHO PRESS ENTER TO EXIT
SET /p input=