set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Remaining plugins:
" vim-fugitive, git wrapper
Plugin 'tpope/vim-fugitive'

" vim-powerline, status line
Plugin 'powerline/powerline'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Custom vimrc
" General settings
syntax on 	" syntax highlighting
set nobackup
set noswapfile
autocmd! bufwritepost .vimrc source %

" plugins configuration
" powerline configuration
" set guifont=Inconsolata\ for\ Powerline:h15 --> not used atm
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
set t_Co=256
set term=xterm-256color
set laststatus=2
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\
set termencoding=utf-8

