#!/bin/bash

# Makes a symbolic link to all the files in the nice directory on ~/
# well, it will also prepend a '.' to the filename so they are hidden and niceable.
# prompts if to begin bixlal.

FILES_DIR="thefiles"

read -p "Go for it? (Y/n): " YESNO

YESNO=${YESNO:-Y}

if [[ $YESNO =~ ^[yY]$ ]]; then
	echo "doing it..."
	for f in $(ls $FILES_DIR); do
		ln -vfs "$PWD/$FILES_DIR/$f" "$HOME/.$f"
	done
fi


