vim.cmd [[packadd packer.nvim]]

-- vim.api.nvim_command('set nonumber')

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Tcomment
  use 'tomtom/tcomment_vim'

  -- NERDTree
  use 'scrooloose/nerdtree'

  -- Airtable
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use 'airblade/vim-gitgutter'

  -- Fzf
  use {'junegunn/fzf', dir = '~/.fzf', run = './install --all' }
  use {'junegunn/fzf.vim'}

  -- Tagbar
  use 'majutsushi/tagbar'

  -- Fireplace
  use 'tpope/vim-fireplace'

  -- Fugitive
  use 'tpope/vim-fugitive'

  -- Surround
  use 'tpope/vim-surround'

  -- Markdown
  use 'tpope/vim-markdown'

  -- UltiSnips
  use 'SirVer/ultisnips'
  use 'honza/vim-snippets'

  -- Theme
  use {'tomasr/molokai', as = 'molokai'}
end)
