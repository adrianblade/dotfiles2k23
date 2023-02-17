#!/usr/bin/env bash

# Install command-line tools using Homebrew.
if [ ! -f "`which brew`" ]; then
    echo -e "$BRed Installing Homebrew $Color_Off"
    #/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "Updating Homebrew"
    brew update
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install other useful binaries.
brew install git

# Remove outdated versions from the cellar.
brew cleanup