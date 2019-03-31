REM Author:     Luke Hedt
REM Date:       2019/03/31
REM Name:       firstCopy.bat
REM Purpose:    Pushes the first set of sync'd files out to their proper locations
REM Usage:      Run this without admin privileges after running firstTime.bat as Admin to set up the sync environment in Windows

xcopy "setRepoDir.bat" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup" 

REM Sync directories 
dirsync "Startup" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup" -s -c -o "\*\.ahk|syncFiles.bat"
dirsync "nvim" "%USERPROFILE%\AppData\Local\nvim" -s -c

git clone https://github.com/VundleVim/Vundle.vim.git "%USERPROFILE%\AppData\Local\nvim\bundle\Vundle.vim"

nvim +PluginInstall +qall

git config --global user.name = "PhalanxHead"
git config --global user.email = "lhedt@hotmail.com"