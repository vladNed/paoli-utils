#!/bin/bash
# Vance Fonter
#
# Script to download and install font
# on ubuntu system
#
# Author: Vlad Nedelcu
# Creation data: 22 Jul 2021
# email: nedelcuvd@gmail.com

set -e

# Colors
green=`tput setaf 2`
reset=`tput sgr0`

echo "${green}> Starting Vance writer...${reset}"

# Go to user fonts and create the gfonts folder
# if it doesn't exist
cd /usr/share/fonts
if [ ! -d "./gfonts" ]; then
    mkdir gfonts
fi

# Enter gfonts and download the font
cd gfonts
sudo unzip -d . ~/Downloads/$1
sudo chmod -R --reference=/usr/share/fonts/opentype /usr/share/fonts/gfonts

# Register fonts
fc-cache -fv

echo "${green}> Done !!${reset}"