ECHO OFF

IF NOT "%PRJVARSLOADED%"=="Yes" (
	ECHO ===============================================================================
	ECHO                                Load Project Variables
	ECHO ===============================================================================

	call ProjectVariables.bat
)

ECHO ===============================================================================
ECHO                                Populate index
ECHO ===============================================================================

%PROJECTTOOLSPATH%\IndexPopulator.exe -ASM %ASSEMBLYPATH%
rem %ASSEMBLYPATH%\IndexPopulator.exe -NOBACKUP

ECHO Done.
