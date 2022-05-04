" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" " Make sure you use single quotes
"
" " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'
"
" " Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'
"
" " Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
"
" " On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
"
" " Using a non-master branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
"
" " Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }
"
" " Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
"
" " Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"
" " Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

" Plug 'scrooloose/syntastic'
Plug 'airblade/vim-gitgutter'
Plug 'aklt/plantuml-syntax'
Plug 'cespare/vim-toml'
" Plug 'eraserhd/parinfer-rust'
Plug 'guns/vim-clojure-static'
Plug 'hashivim/vim-terraform'
Plug 'jparise/vim-graphql'
Plug 'ctrlpvim/ctrlp.vim'
" Plug 'leafgarland/typescript-vim'
Plug 'majutsushi/tagbar'
Plug 'elixir-lang/vim-elixir'
Plug 'raimondi/delimitmate'
Plug 'keith/swift.vim'
Plug 'udalov/kotlin-vim'
Plug 'prabirshrestha/vim-lsp', { 'for': 'rust' }
Plug 'mattn/vim-lsp-settings', { 'for': 'rust' }
Plug 'mxw/vim-jsx'
Plug 'mileszs/ack.vim'
Plug 'd11wtq/ctrlp_bdelete.vim'
Plug 'neovimhaskell/haskell-vim'
Plug 'pangloss/vim-javascript'
Plug 'rust-lang/rust.vim'
Plug 'scrooloose/nerdtree'
Plug 'shaunlebron/parinfer'
Plug 'tomasr/molokai'
Plug 'evanleck/vim-svelte'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-markdown'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'w0rp/ale'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'fatih/vim-go'
Plug 'rescript-lang/vim-rescript'
Plug 'sonph/onehalf', { 'rtp': 'vim' }

" Initialize plugin system
call plug#end()
