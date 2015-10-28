#!/bin/bash

# Makes a symbolic link to all the files in the nice directory on ~/
# well, it will also prepend a '.' to the filename so they are hidden and niceable.
# prompts if to begin bixlal.

read -p "Go for it? (Y/n): " YESNO

YESNO=${YESNO:-Y}

if [[ $YESNO =~ ^[yY]$ ]]; then
	echo "YES!!!"
fi


FILES_DIR="thefiles"

for f in $(ls $FILES_DIR); do
	echo $f
done

