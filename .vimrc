" Vundle Setup

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme='badwolf'
Plugin 'altercation/vim-colors-solarized'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Setup theme

syntax on
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" Basic configuration

set nu
set t_Co=256
set showcmd
set tabstop=2                   " see :h 'tanbstop'
set softtabstop=2               " see :h 'softtabstop'
set shiftwidth=2                " see :h 'shiftwidth'
set expandtab
set smartindent
set hlsearch
set omnifunc=javascriptcomplete#CompleteJS
set omnifunc=htmlcomplete#CompleteTags
set omnifunc=csscomplete#CompleteCSS
set omnifunc=phpcomplete#CompletePHP
filetype plugin indent on
set cursorline
set mouse=a
" set ignorecase
" hi CursorLine = nice colors

