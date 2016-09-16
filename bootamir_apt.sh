#!/bin/bash
# This script attmepts to boot up some stuff for
# a Linux development machine for me.
# Run as regular user, no sudo (it will ask when needed).

echo "Installing stuff with apt..."
sudo apt install \
    git \
    build-essential \
    vim \
    python3 \
    virtualenvwrapper


echo "Configuring git with amir@eize.nijna..."
git config --global user.name "Amir Eldor"
git config --global user.email "amir@eize.ninja"
git config --global core.editor vim
read -p "Did you set up an ssh key on GitHub? Do it now or die"


mkdir -p $HOME/repos
echo "Cloning amir's taninfiles from GitHub..."
git clone --recursive git@github.com:amireldor/amir-taninfiles.git $HOME/repos/amir-taninfiles


echo "Running install.sh of amir-taninfiles..."
cd $HOME/repos/amir-taninfiles
/bin/bash install.sh


echo "Need to install node stuff but to lazy to write a script"
echo "The script should override the regular node package and install a recent"
echo "or whatever version needed using npm's n or nvm or something"

echo "Bye"
