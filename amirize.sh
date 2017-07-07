#/bin/bash
cd nicescripts/

cat <<MESSAGE
Hello Amir, this will provision your system. Hopefully.

I will now run sudo echo so admin priviliedges will be available to some of the
installer scripts.  Note that nothing evil is done to the system unless someone
hacked your repository and you didn't notice.  Also note that maybe stuff will
take millions of minute and this sudo sudoing might expire.  This is where
Ansible would probably do better but I promised myself not to fall victim to a
refactoring-syndrom.
MESSAGE

# allow following scripts to sudo easily.
sudo echo "hello from sudo"

# consider ls + sort, but consider not as well
bash 20_apt_stuff.sh
bash 30_node.sh
bash 40_taninfiles.sh
bash 50_dotfiles_symlinks.sh
bash 55_npm_home.sh
bash 60_git-prompt.sh
bash 70_neovim.sh
bash 80_vim_plug.sh

echo "Good luck! And may the GZOO be with you!"
