@echo off
set INSTALL_DIR=%LOCALAPPDATA%\Microsoft\WindowsApps
if not exist "%INSTALL_DIR%" mkdir "%INSTALL_DIR%"
curl -fsSL https://raw.githubusercontent.com/JovianOps/cheat/master/cheat -o "%INSTALL_DIR%\cheat.cmd"
echo @echo off>>"%INSTALL_DIR%\cheat.cmd"
echo sh "%USERPROFILE%\.cheat\wrapper.sh" %%*>>"%INSTALL_DIR%\cheat.cmd"
mkdir "%USERPROFILE%\.cheat" 2>nul
if not exist "%USERPROFILE%\.cheat\wrapper.sh" (
  curl -fsSL https://raw.githubusercontent.com/JovianOps/cheat/master/cheat -o "%USERPROFILE%\.cheat\wrapper.sh"
)
echo Installed
