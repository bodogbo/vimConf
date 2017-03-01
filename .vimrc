set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go'

call vundle#end()            " required

execute pathogen#infect()
filetype plugin indent on    " required

autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

map <C-n> :NERDTreeToggle<CR>


set fileencodings=utf-8,gbk
set enc=utf8
set tenc=utf8


syntax on
set ai
set hidden
set tabstop=4
set shiftwidth=4
"set noexpandtab
set softtabstop=4
set expandtab
set hlsearch
set foldmethod=marker
set foldmarker={,}
set syntax=cpp.doxygen
set splitright
set splitbelow

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v/
