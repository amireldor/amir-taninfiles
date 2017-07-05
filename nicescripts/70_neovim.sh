#!/usr/bin
# Clone compile and install neovim. Create symlinks to init.vim and do
# something with vim-plug.

# config + vim-plug
mkdir -p ~/.config/nvim/
mkdir -p ~/.local/share/nvim/site/autoload/
mv ~/.config/nvim/init.vim ~/.config/nvim/init.vim.bak
ln -sf "$PWD/neovim/init.vim" ~/.config/nvim/
cp "$PWD/neovim/plug.vim" ~/.local/share/nvim/site/autoload/
ln -sf "$PWD/thefiles/vim/ftplugin" ~/.config/nvim/

# install it
SRC_FOLDER=$HOME/repos/upstream

mkdir -p "$SRC_FOLDER"
cd "$SRC_FOLDER"
git clone https://github.com/neovim/neovim.git

cd neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install

# plugins
nvim +PlugInstall +qall
