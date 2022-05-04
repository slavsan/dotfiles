lua <<EOF
local home = os.getenv("HOME")
package.path = (
  package.path
  .. ";" .. home .. "/.dotfiles/nvim/lua/?.lua"
  .. ";" .. home .. "/.dotfiles/nvim/lua/?/?.lua"
)

require 'plugins'
require 'plugins.airtable'
require 'plugins.nerdtree'
require 'plugins.fzf'
require 'plugins.ultisnips'

require 'colorscheme'
require 'basic'
require 'bindings'
EOF
