#!/bin/bash
# Make symlinks to the common dotfiles on my $HOME

FILES_DIR="thefiles"
BACKUP_DIR="$HOME/amir-taninfiles.originals"

echo "Making a lot of symlinks for dotfiles"
mkdir -p "$BACKUP_DIR"
for f in $(ls $FILES_DIR); do
    mv "$HOME/.$f" "$BACKUP_DIR/$f"
    ln -vs "$PWD/$FILES_DIR/$f" "$HOME/.$f"
done
