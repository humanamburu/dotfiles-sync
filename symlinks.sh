#!/bin/sh
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd -P)"

# WARNING: Please backup your .dotfiles before using the script

# This script move dotfiles (.zshrc and .gitconfig) to the current directory 
# and creates symlinks to them at the root. 
# The idea is to move all config files to a folder syncing with some cloud.
mv ~/.gitconfig ./
mv ~/.zshrc ./

ln -s $SCRIPT_DIR/.gitconfig ~/.gitconfig
ln -s $SCRIPT_DIR/.zshrc ~/.zshrc

echo "Symlinks have been created"