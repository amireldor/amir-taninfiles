#!/bin/bash
# Clones the taninfiles, THIS repository my dotfiles config repository

# Note: ssh key should be configured for GitHub

mkdir -p $HOME/repos
echo "Cloning taninfiles from GitHub..."
git clone --recursive git@github.com:amireldor/amir-taninfiles.git $HOME/repos/amir-taninfiles


