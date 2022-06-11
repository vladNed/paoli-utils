#!/bin/bash
set -e

# Color vars
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
reset=`tput sgr0`

# Install VSCode
echo "${green}[OK]${reset} Started installing VSCode."
sudo snap install code --classic

# Install extensions for vscode
code --install-extension ms-python.python
code --install-extension be5invis.vscode-icontheme-nomo-dark
code --install-extension ms-azuretools.vscode-docker

echo "${green}[OK]${reset} VSCode installed successfully."
