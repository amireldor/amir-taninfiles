#!/bin/bash

# Clones the taninfiles, THIS repository my dotfiles config repository

read -p "Did you set up an ssh key on GitHub? Do it now or die"

mkdir -p $HOME/repos
echo "Cloning amir's taninfiles from GitHub..."
git clone --recursive git@github.com:amireldor/amir-taninfiles.git $HOME/repos/amir-taninfiles


