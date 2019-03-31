REM Author:     Luke Hedt
REM Date:       2019/03/31
REM Name:       syncFiles.bat
REM Purpose:    Syncs the config files with their respective homes, keeping the latest version
REM Usage:      Change the RepoDir to where you have cloned the Repo to in your windows system before running firstTime.bat
REM             This file will run on all startups, and via the AHK script when you press CTRL+ALT+|
REM Dependancies:  pypi's dirsync

call setRepoDir

dirsync %repoDir%\Startup "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup" -s -c -o "syncFiles.bat | .*\.ahk"
dirsync %repoDir%\nvim "%USERPROFILE%\AppData\Local\nvim" -s -c -o "init.vim"

dirsync "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup" %repoDir%\Startup -s -c -o "syncFiles.bat | .*\.ahk"
dirsync "%USERPROFILE%\AppData\Local\nvim" %repoDir%\nvim -s -c -o "init.vim"

cd %repoDir%
git add *
git commit -am "File Sync"
REM git push -u origin master

pause
