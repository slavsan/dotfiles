" source ~/.dotfiles/vim/plugins.vim
source ~/.dotfiles/vim/vim-plug.vim
source ~/.dotfiles/vim/theme.vim
source ~/.dotfiles/vim/basic.vim
source ~/.dotfiles/vim/airline.vim
source ~/.dotfiles/vim/nerdtree.vim
source ~/.dotfiles/vim/ctrlp.vim
source ~/.dotfiles/vim/rust.vim
source ~/.dotfiles/vim/haskell.vim
source ~/.dotfiles/vim/syntastic.vim
source ~/.dotfiles/vim/go.vim

" =============== example configs ================
" https://github.com/thoughtbot/dotfiles/blob/master/vimrc

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPBuffer'

" https://stackoverflow.com/questions/48364131/vim-preview-tab-pops-up-when-selecting-a-suggestion-from-autocomplete?rq=1
set completeopt-=preview

" autocmd BufWritePost * GitGutter



" https://github.com/kien/ctrlp.vim/issues/78
let g:ctrlp_dont_split = 'nerdtree'


" https://stackoverflow.com/questions/11666170/persistent-set-syntax-for-a-given-filetype/28117335
" augroup tsx_ft
"   au!
"   autocmd BufNewFile,BufRead *.tsx   set syntax=typescript
" augroup END

autocmd BufNewFile,BufRead *.mjs set filetype=javascript

" let mapleader=","
let mapleader=" "
nnoremap <SPACE> <Nop>



" Insert empty block
function! InsertBlock()
  let line = getline('.')
  call setline('.', line . " {")
  normal! o
  call setline('.', "\t")
  normal! o
  call setline('.', "}")
  normal! k
  startinsert!
endfunction

" == Custom shortcuts ==

" Insert empty block
nmap <C-w>p :call InsertBlock()<CR>
" Save changes
nmap <C-s> :w<CR>
" Reload file
nmap <C-w><C-e> :e!<CR>

" go-vim key bindings
" xnoremap <C-a><C-i> :call GoInfo()<CR>
au FileType go nmap <leader>rn <Plug>(go-run)
au FileType go nmap <leader>rv <Plug>(go-run-vertical)
au FileType go nmap <leader>rm <Plug>(go-rename)
au FileType go nmap <leader>re <Plug>(go-referrers)
au FileType go nmap <leader>in <Plug>(go-info)
au FileType go nmap <leader>ie <Plug>(go-iferr)
au FileType go nmap <leader>im <Plug>(go-implements)
au FileType go nmap <leader>dx <Plug>(go-doc)
au FileType go nmap <leader>de <Plug>(go-describe)
au FileType go nmap <leader>df <Plug>(go-def)
au FileType go nmap <leader>te <Plug>(go-test)
au FileType go nmap <leader>tf <Plug>(go-test-func)
au FileType go nmap <leader>co <Plug>(go-coverage)
au FileType go nmap <leader>cc <Plug>(go-coverage-clear)
au FileType go nmap <leader>pt <Plug>(go-pointsto)

let g:svelte_indent_script = 2
let g:svelte_indent_style = 2

nmap <C-w>t :TagbarToggle<CR>

let g:lsp_diagnostics_echo_cursor = 1

nmap gd :LspDefinition<CR>
nmap gs :LspDocumentSymbolSearch<CR>
nmap gr :LspReferences<CR>
nmap gi :LspImplementation<CR>
nmap dp :LspPeekDefinition<CR>
nmap K  :LspHover<CR>
nmap NF :NERDTreeFind<CR>

set nonu

set signcolumn=yes
autocmd FileType tagbar,nerdtree setlocal signcolumn=no

let g:markdown_folding = 1
au FileType markdown setlocal foldlevel=99



call ctrlp_bdelete#init()
