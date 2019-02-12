" =================== plugins ====================
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


" ==================== theme =====================
" Solarized
" set background=dark
" let g:solarized_termcolors=256
" colorscheme solarized

" Molokai
let g:rehash256 = 1
set background=dark
let g:molokai_original = 1
colorscheme molokai

" set background=light
" colorscheme PaperColor


" ================= basic setup ==================
syntax on
set t_Co=256
set nu
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
set clipboard=unnamed

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2
set nowrap
" set colorcolumn=81
autocmd BufReadPost,BufNewFile *.js,*.go match ErrorMsg '\%>80v.\+'
autocmd BufNew,BufRead *.md match none

set backspace=indent,eol,start

" nnoremap q :bp\|bd #<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>

" Open new split panes to right and bottom, which feels more natural
" set splitbelow
" set splitright


" =================== airline ====================
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='badwolf'
set showtabline=0


" ================== nerdtree ====================
let NERDTreeShowHidden = 1


" =================== ctrlp ======================
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|coverage\|dist'
" let g:ctrlp_max_files = 0
let g:ctrlp_max_files = 50000
let g:ctrlp_show_hidden = 1
let g:ctrlp_mruf_relative = 1
let g:ctrlp_max_height = 30
" let g:ctrlp_working_path_mode=''
" let g:ctrlp_cmd = 'CtrlPMRU'


" ================ rust.vim ======================
let g:rustfmt_autosave = 1


" ============== haskell-vim =====================
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords


" ================== syntactic ===================
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
"
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0


" ==================== vim-go ====================
if has('nvim')
  let g:go_fmt_fail_silently = 0
  let g:go_fmt_command = "goimports"
  let g:go_list_type = "quickfix"
  let g:go_auto_type_info = 0
  let g:go_def_mode = "guru"
  let g:go_echo_command_info = 1
  let g:go_gocode_autobuild = 0
  let g:go_gocode_unimported_packages = 1

  let g:go_autodetect_gopath = 1
  let g:go_info_mode = "guru"

  " let g:go_metalinter_autosave = 1
  " let g:go_metalinter_autosave_enabled = ['vet', 'golint']

  let g:go_highlight_space_tab_error = 0
  let g:go_highlight_array_whitespace_error = 0
  let g:go_highlight_trailing_whitespace_error = 0
  let g:go_highlight_extra_types = 0
  let g:go_highlight_build_constraints = 1
  let g:go_highlight_types = 0

  let g:go_modifytags_transform = 'camelcase'

  nmap <C-g> :GoDecls<cr>
  imap <C-g> <esc>:<C-u>GoDecls<cr>

  " run :GoBuild or :GoTestCompile based on the go file
  function! s:build_go_files()
    let l:file = expand('%')
    if l:file =~# '^\f\+_test\.go$'
      call go#test#Test(0, 1)
    elseif l:file =~# '^\f\+\.go$'
      call go#cmd#Build(0)
    endif
  endfunction

  augroup go
    autocmd!

    autocmd FileType go nmap <silent> <Leader>v <Plug>(go-def-vertical)
    autocmd FileType go nmap <silent> <Leader>s <Plug>(go-def-split)

    autocmd FileType go nmap <silent> <Leader>x <Plug>(go-doc-vertical)

    autocmd FileType go nmap <silent> <Leader>i <Plug>(go-info)
    autocmd FileType go nmap <silent> <Leader>l <Plug>(go-metalinter)

    autocmd FileType go nmap <silent> <leader>b :<C-u>call <SID>build_go_files()<CR>
    autocmd FileType go nmap <silent> <leader>t  <Plug>(go-test)
    autocmd FileType go nmap <silent> <leader>r  <Plug>(go-run)
    autocmd FileType go nmap <silent> <leader>e  <Plug>(go-install)

    autocmd FileType go nmap <silent> <Leader>c <Plug>(go-coverage-toggle)

    " I like these more!
    autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
    autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
    autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
    autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')
  augroup END
endif

" =============== example configs ================
" https://github.com/thoughtbot/dotfiles/blob/master/vimrc
