#!/bin/bash
# Ubuntu Utils
#
# Script to download and install font all
# user things for ubuntu development
#
# Author: Vlad Nedelcu
# Creation data: 10 Mar 2021
# email: nedelcuvd@gmail.com

# Color vars
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
reset=`tput sgr0`

sudo apt-get update

# Install neofetch
echo "${green}[OK]${reset} Installing NeoFetch."
sudo apt install neofetch
echo "${green}[OK]${reset} NeoFetch installed."

# Install papirus
echo "${green}[OK]${reset} Installing Papirus. "
sudo add-apt-repository ppa:papirus/papirus
sudo apt install papirus-icon-theme
echo "${green}[OK]${reset} Papirus installed. "