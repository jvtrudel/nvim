vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require "user.options"
require "user.keymaps"
require "user.plugins"

require("nvim-tree").setup()

require "user.autocommands"
