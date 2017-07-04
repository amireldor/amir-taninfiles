set expandtab ts=4 sts=4 sw=4

call plug#begin('~/vimfiles/bundle')
Plug 'vim-scripts/a.vim'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'davidhalter/jedi-vim'
Plug 'nanotech/jellybeans.vim'
Plug 'rust-lang/rust.vim'
Plug 'cespare/vim-toml'
Plug 'jceb/vim-orgmode'
call plug#end()

map <F2> :Ex .<CR>
map <C-b> :CtrlPBuffer<CR>
map <F3> :NERDTreeToggle<CR>
map <C-h> :set hls!<CR>

" cd to current file's folder like a BOSS!
" I need this as I was in ~ when opening a file in nautilus with GVim. This
" solved it.
if @% != ""
  cd %:h
endif

" I like to :set wrap sometimes, this makes navigation easier, especially when editing text:
map j gj
map k gk

nmap <F5> :e $MYVIMRC<cr>
map <F8> :e /tmp/amir<cr>

"set t_Co=256
silent! colorscheme jellybeans
nmap <Space> <leader>
map <M-x> <C-]>
map <M-z> <C-o>

let g:python_host_prog  = '/home/amir/.virtualenvs/neovim/bin/python'
let g:python3_host_prog  = '/home/amir/.virtualenvs/neovim3/bin/python'

