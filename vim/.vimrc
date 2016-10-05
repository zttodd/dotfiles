set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Vundle Plugins
Plugin 'airblade/vim-gitgutter'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'honza/vim-snippets'
Plugin 'kien/ctrlp.vim'
Plugin 'mattn/emmet-vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'scrooloose/nerdTree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Put your non-Plugin stuff after this line

set hlsearch
set laststatus=2

syntax on

" Numbers
set number
set numberwidth=5

syntax enable
set background=dark

" Display invisible characters
if has("patch710")
    " For versions of Vim higher than 7.4, with the patch710
    " or MacVim installed from Homebrew
    set list listchars=tab:▸\·,trail:·,space:·
else
    " For older versions of Vim
    set list listchars=tab:▸\·,trail:·
endif

" Convert tabs to spaces
" Size of an indent
" Insert spaces instead of tabs
" In insert mode, tabbing forward and backward goes to next/previous tabstop
set tabstop=4 shiftwidth=4 expandtab smarttab

" Hide NERDTree by default
let NERDTreeShowHidden=1

" Make Vim use 256 colors
set t_Co=256

" AirlineTheme
let g:airline_powerline_fonts = 1
let g:airline_theme='luna'

" Hide insert status
set noshowmode

" Eliminate ESC key delay
set ttimeoutlen=10

set encoding=utf-8

" Easier split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Create hidden buffers when file is exited before saving, without !
set hidden

" Automatically source .vimrc upon save
if has("autocmd")
    autocmd bufwritepost .vimrc source $MYVIMRC
endif

" gVim settings
if has('gui_running')
    :set guioptions-=T  "remove toolbar
    :set guioptions-=r  "remove right-hand scroll bar
    :set guioptions-=L  "remove left-hand scroll bar
    :set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 17 "set gfn? (get current font string)
    :set columns=999
    :colorscheme Tomorrow-Night-Bright
endif

" MacVim settings
if has("gui_macvim")
    :set guifont=Fira\ Code:h20
    :colorscheme Tomorrow-Night
endif
