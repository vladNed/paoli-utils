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
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension ms-toolsai.jupyter
code --install-extension ms-vscode-remote.remote-ssh
code --install-extension ms-vscode-remote.remote-ssh-edit
code --install-extension ms-vscode.makefile-tools
code --install-extension rust-lang.rust
code --install-extension rust-lang.rust-analyzer
code --install-extension bungcip.better-toml
code --install-extension streetsidesoftware.code-spell-checker


echo "${green}[OK]${reset} VSCode installed successfully."
