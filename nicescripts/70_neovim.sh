#!/usr/bin
# Clone compile and install neovim. Create symlinks to init.vim and do
# something with vim-plug.

SRC_FOLDER=$HOME/repos/upstream

mkdir -p "$SRC_FOLDER"
cd "$SRC_FOLDER"
git clone https://github.com/neovim/neovim.git

cd neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install

nvim +PlugInstall +qall
