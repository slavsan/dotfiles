vim.cmd([[
" Turn syntax highlighting
syntax on

" Set color palette
set t_Co=256

" Show line numbers
set number

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

" Highlight everything after the 80th column
" autocmd BufReadPost,BufNewFile *.js,*.go match ErrorMsg '\%>80v.\+'
" autocmd BufNew,BufRead *.md match none

set backspace=indent,eol,start

" Set the vertical line characters
" variants:
"   - "set fillchars+=vert:\|"
"   - "set fillchars+=vert:\ " <- mind the space here
set fillchars+=vert:\|"

hi VertSplit ctermbg=NONE guibg=NONE

" nnoremap q :bp\|bd #<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>

set laststatus=3

" Open new split panes to right and bottom, which feels more natural
" set splitbelow
" set splitright

:set ignorecase
]])
