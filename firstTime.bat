REM Author:     Luke Hedt
REM Date:       2019/03/31
REM Name:       firstTime.bat.
REM Purpose:    Installs Choco and all my standard software. Pushes scripts to their homes
REM Usage:      Run this with admin privileges to set up the sync environment in Windows

REM Download and install Chocolatey
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

REM Install the standard set of tools from Choco
choco install git.install -y
choco install googlechrome -y
choco install nodejs.install -y
choco install autohotkey.install -y
choco install python3 -y
choco install nvim -y
choco install vscode -y

pip install dirsync

REM Sync directories 
dirsync "Startup" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup" -s -o "*.ahk|syncFiles.bat"
dirsync "nvim" "%USERPROFILE%\AppData\Local\nvim" -s -o "init.vim"

git config --global user.name = "PhalanxHead"
git config --global user.email = "lhedt@hotmail.com"

pause
