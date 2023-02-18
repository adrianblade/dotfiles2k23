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

# Install command-line tools using Homebrew.
echo -e "Installing brew packages ..."
if [ ! -f "`which brew`" ]; then
    echo -e "$BGreen Installing Homebrew $Color_Off"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/adriancataland/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

echo -e "$BBlue Updating Homebrew $Color_Off"
# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install other useful binaries.
echo -e "Installing brew packages ..."
brew install git

# Install other useful apps.
brew install --cask iterm2
brew install --cask visual-studio-code
brew install --cask docker

# Remove outdated versions from the cellar.
brew cleanup

echo -e "Installing ohmyzsh ..."
if [ -d "$HOME/.oh-my-zsh" ];
then
    echo -e "Oh my zsh is already installed"
else 
    echo -e "Oh my zsh is not installed"
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.powerlevel10k
fi

# Link custom dotfiles
cp .aliases.zsh ~/.aliases.zsh
cp .zshrc ~/.zshrc
cp .p10k.zsh ~/.p10k.zsh

# Link custom dotfiles
ln -sf ~/workspace/dotfiles2k23/.aliases.zsh ~/.aliases.zsh
ln -sf ~/workspace/dotfiles2k23/.zshrc ~/.zshrc
ln -sf ~/workspace/dotfiles2k23/.p10k.zsh ~/.p10k.zsh



