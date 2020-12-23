call plug#begin('~/.vim/plugged')
Plug 'ntk148v/vim-horizon'
Plug 'vim-airline/vim-airline'
Plug 'arcticicestudio/nord-vim'
call plug#end()

set number	
set linebreak
set showbreak=+++
set textwidth=100
set showmatch	
set visualbell
 
set hlsearch
set smartcase	
set ignorecase
set incsearch
 
set autoindent	
set shiftwidth=4
set smartindent	
set smarttab	
set softtabstop=4	
 

set ruler	
 
set undolevels=1000
set backspace=indent,eol,start	

syntax on
colorscheme nord 
