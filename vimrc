set runtimepath^=~/.vim runtimepath+=~/.dotfiles/vim runtimepath+=~/.vim/after
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

if has('nvim')
  source ~/.dotfiles/nvim/main.vim
else
  source ~/.dotfiles/vim/main.vim
endif
