set expandtab ts=4 sts=4 sw=4
set mouse=a

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
Plug 'ciaranm/detectindent'
Plug 'vim-syntastic/syntastic'
Plug 'editorconfig/editorconfig-vim'

Plug 'guns/vim-clojure-static'
Plug 'kien/rainbow_parentheses.vim'
Plug 'guns/vim-clojure-highlight'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-classpath'
"Plug 'clojure-vim/nvim-parinfer.js'
Plug 'guns/vim-sexp'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
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
let g:python_host_prog  = '/home/amir/.virtualenvs/neovim/bin/python'
let g:python3_host_prog  = '/home/amir/.virtualenvs/neovim3/bin/python'

silent! autocmd BufRead * :DetectIndent

set visualbell

" Don't work under some terminals (mate-terminal! ahem...)
"map <M-z> <C-o>
"map <M-x> <C-i>
" ...
" So this works, thanks StackOverflow (type <CTRL-v> <ESC> to input weird ^[)
map z <C-o>
map x <C-i>

" kien/rainbow_parenthesses.vim
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

set number

" riotjs syntax highlighting
au BufRead,BufNewFile *.tag :set filetype=html
