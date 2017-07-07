This is amir-taninfiles
=======================

**A note of doom!!:** why not make an Ansible script to install this stuff on
localhost as inventory? **Warning:** don't fall into a refactoring-syndrome.
Finish 'one' branch first. **Update:** 'one' is merged!

---------------------------------------- 

This is basically my dotfiles repository along with some Ubuntu Linux based
system bootstrapping. Actually it's the other way around because the
bootstrapping is the interesting part.


I am Amir and I don't know what to do
-------------------------------------

Hello Amir, this is you, from the past!

To bootstrap your awesome new Linux machine that you bought from system76 or
got from work, you should: 

 1. Download a ZIP of this repository, it will be cloned later to ~/repos
 2. `ssh-keygen`. Then add the key to your GitHub account
 3. Eat vegetables!
 4. `./amirize.sh`

`amirirze` will use sudo to echo a message so your shell will have sudo
priviledges for later commands.  There's an obvious bug that when stuff take
more than 5 minutes (or something) and then the **sudo stuff is gone** and you
will be prompted again.  I think this can be fixed by using an Ansible version
of the process, but developing it is forbidden by the Random God at the moment.


The second paragraph
--------------------

This is the second paragraph.


## What's gonna be installed ##

 * your common development stuff, including Python fun and node with the 'n'
	 version manager
 * neovim is cloned and compiled and it's fun
 * the dotfiles from this repository will be symlinked to their proper
	 locations, and when you change them you should commit and push the changes
	 for future installations
 * I'm tired so maybe more stuff that I don't remember
