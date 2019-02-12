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
