set nocompatible              " required
filetype off                  " required

" Plugins and their config
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Remaining plugins:
" vim-fugitive, git wrapper
Plugin 'tpope/vim-fugitive'

" vim-powerline, status line
"TODO: co jeszcze zostało zainstalowane
"Plugin 'powerline/powerline'
set guifont=Inconsolata\ for\ Powerline:h15
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
set t_Co=256
" wydaje się być niepotrzebne, być może tylko niepotrzebne przy ssh
"set term=xterm-256color
set laststatus=2
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\
set termencoding=utf-8

" colorschemes
Plugin 'vim-scripts/Colour-Sampler-Pack'
Plugin 'vim-scripts/vim-misc'
Plugin 'vim-scripts/vim-colorscheme-switcher'
Plugin 'vim-scripts/CSApprox'
" CSApprox alternative
" Plugin 'thinca/vim-guicolorscheme'

" nie działa...
" Plugin 'oblitum/rainbow'

" NerdTree
Plugin 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>

"tcomment_vim
Plugin 'tomtom/tcomment_vim'

"vim-easymotion
Plugin 'easymotion/vim-easymotion'

"command-T > not used atm

"vim-snipmate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

"vim-snippets
Plugin 'honza/vim-snippets'

"vim-surround
Plugin 'tpope/vim-surround'

" python-mode
Plugin 'klen/python-mode'
map <Leader>g :call RopeGotoDefinition()<CR>
let ropevim_enable_shortcuts = 1
let g:pymode_rope_goto_def_newwin = "vnew"
let g:pymode_rope_extended_complete = 1
let g:pymode_breakpoint = 0
let g:pymode_syntax = 1
let g:pymode_virtualenv = 1

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Custom vimrc
" General settings
syntax on 	" syntax highlighting
"set nobackup	" disable backup
set noswapfile	" disable swap file
set tabstop=4       " Number of spaces that a <Tab> in the file counts for.
set shiftwidth=4    " Number of spaces to use for each step of (auto)indent.
set expandtab       " Use the appropriate number of spaces to insert a <Tab>.
set smarttab
set showcmd         " Show (partial) command in status line.
set number          " Show line numbers.
set showmatch
set hlsearch
set incsearch
set ignorecase
set smartcase 
set backspace=2
set autoindent
set textwidth=79
set formatoptions=c,q,r,t
set ruler
set mouse=a
set splitbelow
set splitright
set hidden
set history=1000

" disable showmode since powerline already shows it
set noshowmode
" required for tmux background to work properly
set t_ut=
set background=dark
colorscheme solarized 

" Mappings
" Use ; for : in normal and visual mode, less keystrokes
nnoremap ; :
vnoremap ; :

nmap <leader>v :tabnew ~/.vimrc<CR>

" remap U to <C-r> for easier redo
" from http://vimbits.com/bits/356
nnoremap U <C-r>

" Keep text selected after manual indentation 
vnoremap < <gv
vnoremap > >gv

" note: nested is required for a proper Powerline behaviour (no color-losing on
" autosave)
autocmd! bufwritepost .vimrc nested source % " instant vimrc reloadin

" set foldenable " Turn on folding
" set foldmethod=marker " Fold on the marker
" set foldlevel=0 " Don't autofold anything (but I can still fold manually)
" set foldopen=block,hor,mark,percent,quickfix,tag " what movements open folds 

set listchars=tab:·\ ,eol:¶,trail:·,extends:»,precedes:« " Unprintable chars mapping
set list
