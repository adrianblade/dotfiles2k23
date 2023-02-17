#!/usr/bin/env bash

Color_Off='\033[0m'       # Text Reset
# Regular Colors
# Bold
BBlack='\033[1;30m'       # Black
BRed='\033[1;31m'         # Red
BGreen='\033[1;32m'       # Green
BYellow='\033[1;33m'      # Yellow
BBlue='\033[1;34m'        # Blue
BPurple='\033[1;35m'      # Purple
BCyan='\033[1;36m'        # Cyan
BWhite='\033[1;37m'       # White

echo -e "Installing brew ..."
. brew.sh
echo -e "Installing brew packages ..."
echo -e "Installing terminal customizations ..."
echo -e "Installing sdk-man ..."
echo -e "Installing zsh ..."    

