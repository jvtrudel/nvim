-- :h option-list    -- list availabl options 
-- :h options        -- options detailed documentation 
local opt = vim.opt
opt.clipboard = "unnamedplus"               -- allows neovim to access the system clipboard
opt.completeopt = { "menuone", "noselect" } -- mostly just for cmp
opt.fileencoding = "utf-8"                  -- the encoding written to a file
opt.hlsearch = true                         -- highlight all matches on previous search pattern
opt.ignorecase = true                       -- ignore case in search patterns
opt.mouse = "a"                             -- allow the mouse to be used in neovim
opt.expandtab = true                        -- convert tabs to spaces
opt.shiftwidth = 2                          -- the number of spaces inserted for each indentation
opt.tabstop = 2                             -- insert 2 spaces for a tab
opt.expandtab = true                        -- convert tabs to spaces
opt.shiftwidth = 2                          -- the number of spaces inserted for each indentation
opt.tabstop = 2                             -- insert 2 spaces for a tab
opt.scrolloff = 8                           -- is one of my fav
opt.guifont = "monospace:h17"               -- the font used in graphical neovim applications
opt.cursorline = true
opt.number = true                           -- set numbered lines
opt.relativenumber = true                   -- set relative numbered lines
opt.numberwidth = 4                         -- set number column width to 2 {default 4}
opt.timeoutlen = 300                        -- time to wait for a mapped sequence to complete (in milliseconds)

vim.cmd "set splitbelow splitright"

