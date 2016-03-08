""" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

""" My Bundles
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'

call vundle#end()
filetype plugin indent on  

" Remap ctrlp settings
let g:ctrlp_map = "<leader>p"

""" User Interface
set guifont=Anondale\ Mono:h10
set guioptions-=T
set ruler
set mouse=a
set title

""" Show command we're typing
set showcmd

colorscheme desert
 
set wildmenu            " Popup a window showing all matching command above command line when autocomplete.
set wildmode=longest,list

set wildignore+=*.a,*.o
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png
set wildignore+=.DS_Store,.git,.hg,.svn
set wildignore+=*~,*.swp,*.tmp
 
""" General
" Sets how many lines of history VIM has to remeber.
set history=1000
set swapfile
set directory=~/tmp
 
" backspace key behavior
set backspace=eol,start,indent
set wrap
 
" Set to auto read when a file is changed from the outside.
set autoread
 
" Loading the plugin and indentation rules according to the dectected filetype.
if has("autocmd")
    filetype plugin indent on
endif
 
" search
set incsearch           " incremental search mode
set hlsearch            " highlight search things
set ignorecase          " ignore case when searching
set smartcase           " only works when ignorecase on
 
" encoding
set encoding=utf-8
set fileencodings=utf-8,latin-1,chinese
 
""" Coding
syntax on
set number              " show line number
set showmatch           " show matching brackets.
set matchtime=2         " the length of time to show matching paren.
 
set iskeyword+=_,$,@,%,#,-  " don't linebreak when encounter these characters.
 
set tabstop=4       " The number of spaces count for a TAB.
set softtabstop=4   " The number of spaces inserted when typing TAB. If not expandtab, type TAB twice, will get one TAB.
set shiftwidth=4    " The number of spaces when auto-indent.
set expandtab       " Use the spaces only.
set smarttab        " Insert appropriate spaces in front of line according to shiftwidth, tabstop, softtabstop.
set autoindent
set smartindent
"set cindent        " cindent will disable smartindent, but only for C-like programming.
 
set autowrite       " Automatically save before commands like :next and :make
