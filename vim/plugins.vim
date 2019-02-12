set nocompatible    " be iMproved, required
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'aklt/plantuml-syntax'
Plugin 'altercation/vim-colors-solarized'
Plugin 'cespare/vim-toml'
Plugin 'easymotion/vim-easymotion'
Plugin 'elixir-lang/vim-elixir'
Plugin 'elmcast/elm-vim'
Plugin 'eraserhd/parinfer-rust'
Plugin 'guns/vim-clojure-static'
Plugin 'jparise/vim-graphql'
Plugin 'kien/ctrlp.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'mileszs/ack.vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'mxw/vim-jsx'
Plugin 'neovimhaskell/haskell-vim'
Plugin 'nlknguyen/papercolor-theme'
Plugin 'pangloss/vim-javascript'
Plugin 'posva/vim-vue'
Plugin 'rust-lang/rust.vim'
Plugin 'qpkorr/vim-bufkill'
Plugin 'scrooloose/nerdtree'
Plugin 'shaunlebron/parinfer'
" Plugin 'scrooloose/syntastic'
" Plugin 'slashmili/alchemist.vim'
Plugin 'tomasr/molokai'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'valloric/youcompleteme'
Plugin 'w0rp/ale'
Plugin 'xuyuanp/nerdtree-git-plugin'
if has('nvim')
  Plugin 'fatih/vim-go'
endif
" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on
