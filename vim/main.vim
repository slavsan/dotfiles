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
augroup tsx_ft
  au!
  autocmd BufNewFile,BufRead *.tsx   set syntax=typescript
augroup END


" " Start NERDTree
" autocmd VimEnter * NERDTree
" " Jump to the main window.
" autocmd VimEnter * wincmd p







" let g:ctrlp_buffer_func = { 'enter': 'MyCtrlPMappings' }
"
" func! MyCtrlPMappings()
"     nnoremap <buffer> <silent> <c-C> :call <sid>DeleteBuffer()<cr>
" endfunc
"
" func! s:DeleteBuffer()
"     let line = getline('.')
"     let bufid = line =~ '\[\d\+\*No Name\]$' ? str2nr(matchstr(line, '\d\+'))
"         \ : fnamemodify(line[2:], ':p')
"     exec "bd" bufid
"     exec "norm \<F5>"
" endfunc







" function! ctrlp_bdelete#init()
"   if !exists('g:ctrlp_buffer_func')
"     let g:ctrlp_buffer_func = {}
"   endif
"
"   " don't clobbber any existing user setting
"   if has_key(g:ctrlp_buffer_func, 'enter')
"     if g:ctrlp_buffer_func['enter'] != 'ctrlp_bdelete#mappings'
"       let s:ctrlp_bdelete_user_func = g:ctrlp_buffer_func['enter']
"     endif
"   endif
"
"   let g:ctrlp_buffer_func['enter'] = 'ctrlp_bdelete#mappings'
" endfunction
"
" " Buffer function used in the ctrlp settings (applies mappings).
" function! ctrlp_bdelete#mappings(...)
"   " call the original user setting, if set
"   if exists('s:ctrlp_bdelete_user_func')
"     call call(s:ctrlp_bdelete_user_func, a:000)
"   endif
"
"   nnoremap <buffer> <silent> <c-@> :call <sid>DeleteMarkedBuffers()<cr>
" endfunction
"
" function! s:DeleteMarkedBuffers()
"   " get the line number to preserve position
"   let currln = line('.')
"   let lastln = line('$')
"
"   " list all marked buffers
"   let marked = ctrlp#getmarkedlist()
"
"   " the file under the cursor is implicitly marked
"   if empty(marked)
"     call add(marked, fnamemodify(ctrlp#getcline(), ':p'))
"   endif
"
"   " call bdelete on all marked buffers
"   for fname in marked
"     let bufid = fname =~ '\[\d\+\*No Name\]$' ? str2nr(matchstr(fname, '\d\+'))
"           \ : fnamemodify(fname[2:], ':p')
"     exec "silent! bdelete" bufid
"   endfor
"
"   " refresh ctrlp
"   exec "normal \<f5>"
"
"   " unmark buffers that have been deleted
"   silent! call ctrlp#clearmarkedlist()
"
"   " preserve line selection
"   if line('.') == currln && line('$') < lastln
"     exec "normal \<up>"
"   endif
" endfunction





" let g:ctrlp_buffer_func = { 'enter': 'CtrlPBDelete' }
"
" function! CtrlPBDelete()
"   nnoremap <buffer> <silent> <c-@> :call <sid>DeleteMarkedBuffers()<cr>
" endfunction
"
" function! s:DeleteMarkedBuffers()
"   " list all marked buffers
"   let marked = ctrlp#getmarkedlist()
"
"   " the file under the cursor is implicitly marked
"   if empty(marked)
"     call add(marked, fnamemodify(ctrlp#getcline(), ':p'))
"   endif
"
"   " call bdelete on all marked buffers
"   for fname in marked
"     let bufid = fname =~ '\[\d\+\*No Name\]$' ? str2nr(matchstr(fname, '\d\+'))
"           \ : fnamemodify(fname[2:], ':p')
"     exec "silent! bdelete" bufid
"   endfor
"
"   " refresh ctrlp
"   exec "normal \<F5>"
" endfunction





" https://stackoverflow.com/questions/21316727/automatic-closing-brackets-for-vim
" inoremap " ""<left>
" inoremap ' ''<left>
" inoremap ( ()<left>
" inoremap [ []<left>
" inoremap { {}<left>
" inoremap {<CR> {<CR>}<ESC>O
" inoremap {;<CR> {<CR>};<ESC>O




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

" au FileType go nmap <leader>dx <Plug>GoDoc
" GoDefType
" GoRename
