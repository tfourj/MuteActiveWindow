@echo off
setlocal enabledelayedexpansion

:: Set the GitHub raw URL
set "github_raw_url=https://raw.githubusercontent.com/tfurci/MuteActiveWindow/main/MuteActiveWindow/Scripts/UpdateMAW.bat"

:: Set the file name to update
set "file_to_update=UpdateMAW.bat"

:: Download the content from the GitHub raw URL and overwrite the file
curl -s %github_raw_url% > %file_to_update%

:: Check if the download was successful
if errorlevel 1 (
    echo Failed to retrieve content from %github_raw_url%.
) else (
    echo %file_to_update% has been updated.
    
    :: Run the updated UpdateScript.bat
    call %file_to_update%
)

:: Close the command prompt
exit /b
