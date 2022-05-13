local nmap = function(lhs, rhs)
  vim.api.nvim_set_keymap('n', lhs, rhs, { noremap = true, silent = true })
end

local imap = function(lhs, rhs)
  vim.api.nvim_set_keymap('i', lhs, rhs, { noremap = true, silent = true })
end

local plugin_loaded = function(name)
  return true
  -- https://github.com/wbthomason/packer.nvim/pull/171
  -- return packer_plugins and packer_plugins[name] and packer_plugins[name].loaded
end

nmap('bn',         ':bnext<CR>')           -- next buffer
nmap('bp',         ':bprev<CR>')           -- prev buffer
nmap('<C-w><C-e>', ':e!<CR>')              -- reload file

nmap('<C-c><C-h>', ':let @/=""<CR>')       -- clear highlight

nmap('<C-s>f',     ':FzfFiles<CR>')        -- Fzf show files
nmap('<C-s>b',     ':FzfBuffers<CR>')      -- Fzf show buffers
nmap('<C-s>s',     ':FzfSnippets<CR>')     -- Fzf show snippets

imap('<C-j>',      '<Down>')               -- go down (during insert mode)
imap('<C-k>',      '<Up>')                 -- clear highlight
imap('<C-h>',      '<Left>')               -- clear highlight
imap('<C-l>',      '<Right>')              -- clear highlight

if plugin_loaded('tagbar') then
  nmap('<C-w><C-t>', ':TagbarToggle<CR>')  -- toggle Tagbar
end

if plugin_loaded('fzf') then
  -- ..
end
