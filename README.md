This is amir-taninfiles
=======================

Note of doom: there's a branch called 'one' which I will probably switch to as soon as it's done.
It has one script to do the whole bootstraping process. One script is cool.

This is basically my dotfiles repository along with some Linux system bootstrap helper scripts.

Notes to self:  
Initialliy, you don't really have git installed or configured. Download this repository as zip under some silly folder and then run what you need from `nicefiles/`. The script "30_taninfiles.sh" will clone this repository as your git user and then eventually it'll be a go for running `install.sh`.


## Do stuff with 'nicescripts/'

These contain scripts to be run in order to bootstrap a fresh Linux installation. You want them. Intended to be used as 'modules' that can be combined by demand. Might even have a 'meta-script', who knows.

Missing: nodejs installation (but I hate JavaScript so maybe no), .bashrc customizations (git prompt, virtualenvwrapper,...). Note that maybe I added those and forgot to update this README.


## The install.sh script

It copies a lot of dotfiles from the nice folder into your `$HOME`. It's
basically a dotfiles repository in a different name - to confuse the enemy.

The `install.sh` script is supposed to symlink those files into the system
easily.  Basically only I am supposed to use this repo.

> TODO: Convert to Python so it uses `os.walk` for keeping directory structure (for things like `~/.i3/config`.


## The second paragraph

This is the second paragraph.


## The 'useful_bin' folder

I like having my `$PATH` include `~/bin`. This way I can add custom scripts or symlinks to stuff I frequently run.
Consequently, I started adding some of these scripts in the 'useful_bin' folder.
