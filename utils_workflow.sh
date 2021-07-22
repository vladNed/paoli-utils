#!/bin/bash
# Ubuntu Utils
#
# Script to download and install font all
# user things for ubuntu development
#
# Author: Vlad Nedelcu
# Creation data: 10 Mar 2021
# email: nedelcuvd@gmail.com
set -e

# Color vars
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
reset=`tput sgr0`

# Install neofetch
echo "${green} Installing NeoFetch ${reset}"
sudo apt-get update
sudo apt-get install neofetch

# Install papirus
echo "${green} Installing Papirus ${reset}"
sudo add-apt-repository ppa:papirus/papirus
sudo apt-get update
sudo apt-get install papirus-icon-theme

# Install docker
echo "${green} Installing Docker ${reset}"
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo apt-get install docker-compose

# Add docker to sudo group
echo "${green} Adding docker group ${reset}"
sudo groupadd docker
sudo usermod -aG docker $USER
echo "${yellor} NOTE: After log in use this command: newgrp docker ${reset}"

# Install VSCode
echo "${green} Installing VSCode ${reset}"
sudo snap install code --classic
code --install-extension ms-python.python
code --install-extension be5invis.vscode-icontheme-nomo-dark
code --install-extension ms-azuretools.vscode-docker

# Generate ssh key
echo "${green} Generate ssh key ${reset}"
ssh-keygen -t rsa -b 2048 -C "vlad.nedelcu@evozon.com"

