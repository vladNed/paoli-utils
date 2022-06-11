#!/bin/bash
set -e

# Color vars
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
reset=`tput sgr0`

# Install docker
echo "${green}[OK]${reset} Started installing Docker."

# Add docker repositories
sudo apt install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt update

# Install docker and docker-compose
sudo apt install docker-ce docker-ce-cli containerd.io
sudo apt install docker-compose

echo "${green}[OK]${reset} Docker installed successfully."

# Add docker to sudo group
echo "${green}[OK]${reset}  Adding docker group."
sudo groupadd docker
sudo usermod -aG docker $USER
echo "${yellow} NOTE: After re-login use this command: newgrp docker ${reset}"