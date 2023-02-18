#!/bin/bash

Color_Off='\033[0m'       # Text Reset
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green

# Set username and email for next commands
email="adrianblade6@gmail.com"
username="Adrian Catalan"

# Configure Git
echo "[GIT] Setting git config paramaters"
git config --global user.email "${email}"
git config --global user.name "${username}"

# Configure git alias
echo "[GIT] Alias setup"
git config --global alias.s "status -s"
git config --global alias.mergec "merge --no-ff --no-commit"
git config --global alias.gclean "clean -d -f -f"

if [ $? -eq 0 ]; then
    echo "$Green [SUCCESS] Git is configured\n $Color_Off"
else
    echo "$Red [FAIL] Some error installing GIT\n $Color_Off"
fi