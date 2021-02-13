
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'joshdick/onedark.vim'
Plug 'rakr/vim-one'
call plug#end()


syntax enable
colorscheme Tomorrow-Night
set background=dark

set nu
set relativenumber
set shiftwidth=4
set tabstop=4
set softtabstop=4
set smartindent

set incsearch
set nohlsearch

set noswapfile
set scrolloff=8
