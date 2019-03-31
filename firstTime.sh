# Author:       Luke Hedt
# Date:         2019/03/31
# Name:         firstTime.sh
# Usage:        
                #$ sudo chmod +x firstTime.sh
                #$ sudo firstTime.sh
# Purpose:      Runs a setup for a fresh linux install
#!/bin/bash

apt-get update -y
apt update -y

apt install build-essentials
apt install git
apt install nvim
apt install python3
apt install nodejs npm
apt install docker-ce

pip install dirsync

# Install Chrome
sudo apt-get install libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome*.deb

# Install VS Code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
apt-get install apt-transport-https
apt-get update
apt-get install code # or code-insiders

# Install GitKraken
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
dpkg -i gitkraken-amd64.deb

git config --global user.name = "PhalanxHead"
git config --global user.email = "lhedt@hotmail.com"

dirsync "./Startup" "~/Documents/Startup" -s -c -o ""
dirsync "./nvim" "~/.config/nvim" -s -o "init.vim"
