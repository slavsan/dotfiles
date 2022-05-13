vim.cmd [[packadd packer.nvim]]

-- vim.api.nvim_command('set nonumber')

return require('packer').startup(function()
  -- Packer can manage itself
  use {'wbthomason/packer.nvim', commit = '4dedd3b08f8c6e3f84afbce0c23b66320cd2a8f2'}

  -- Tcomment
  use {'tomtom/tcomment_vim', commit = '7fb091aad8d824bef1d7bc9365921c65e26d82ad'}

  -- NERDTree
  use {'scrooloose/nerdtree', commit = 'eed488b1cd1867bd25f19f90e10440c5cc7d6424'}

  -- Airtable
  use {'vim-airline/vim-airline', commit = 'be5bda1f1dbfa4e36b2adabaf3f423adfa66c336'}
  use {'vim-airline/vim-airline-themes', commit = '97cf3e6e638f936187d5f6e9b5eb1bdf0a4df256'}

  -- Git
  use {'airblade/vim-gitgutter', commit = '988a6dbad9a9777cd94aab18ba7821a41068685b'}
  use {'xuyuanp/nerdtree-git-plugin', commit = '7e5dc4d017a2ac4223e7aec7ee41defe0e2b648d'}

  -- Fzf
  use {'junegunn/fzf', dir = '~/.fzf', run = './install --all', commit = '6dcf5c3d7d6c321b17e6a5673f1533d6e8350462'}
  use {'junegunn/fzf.vim', commit = 'd5f1f8641b24c0fd5b10a299824362a2a1b20ae0'}

  -- Tagbar
  use {'majutsushi/tagbar', commit = 'a577ee4d650476243d91698f2d1228819c5fa0a5'}

  -- Fireplace
  use {'tpope/vim-fireplace', commit = 'b6bef833b56632df917bcf33bc50b8a5d1e26139'}

  -- Fugitive
  use {'tpope/vim-fugitive', commit = 'b7287bd5421da62986d9abf9131509b2c9f918e4'}

  -- Surround
  use {'tpope/vim-surround', commit = 'bf3480dc9ae7bea34c78fbba4c65b4548b5b1fea'}

  -- Markdown
  use {'tpope/vim-markdown', commit = 'b78bbce3371a2eb56c89f618cd4ab2baadc9ee61'}

  -- UltiSnips
  use {'SirVer/ultisnips', commit = 'f5ccf0977c611ffd774ca180774959301baaffad'}
  use {'honza/vim-snippets', commit = '45c8e00d0bae9056713097ea655d76d463b66f10'}

  -- Theme
  use {'tomasr/molokai', as = 'molokai', commit = 'c67bdfcdb31415aa0ade7f8c003261700a885476'}
end)
