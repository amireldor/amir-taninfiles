#!/bin/bash

# Makes a symbolic link to all the files in the nice directory on ~/
# well, it will also prepend a '.' to the filename so they are hidden and niceable.
# prompts if to begin bixlal.

FILES_DIR="thefiles"
BACKUP_DIR="$HOME/amir-taninfiles.originals"

echo "This will create a symlink to all the interesting files in the interesting folder on your home folder."

read -p "Go for it? (Y/n): " YESNO

# default to 'Y'
YESNO=${YESNO:-Y}

if [[ $YESNO =~ ^[yY]$ ]]; then

    echo "doing it..."
    mkdir -p "$BACKUP_DIR"
    for f in $(ls $FILES_DIR); do
        mv "$HOME/.$f" "$BACKUP_DIR/$f"
        ln -vs "$PWD/$FILES_DIR/$f" "$HOME/.$f"
    done

    echo
    echo "You may with to run :PlugInstall on Vim and such."
    echo "If your username is not amir and I still havent fixed this, note that"
    echo "in .gitconfig, the 'gitexcludes' variable is hardcoded with username 'amir'"
    echo
    echo "Original files saved in '$BACKUP_DIR'"
    echo

fi


