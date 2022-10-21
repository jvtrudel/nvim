-- Commont remap options
local opts = { noremap = true , silent = true } 
local term_opts = { silent = true }

-- Shortenkeymap function
local keymap = vim.api.nvim_set_keymap

-- Remap leader key. Use space
keymap("","<Space>","<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--------------------------------------
-- Normal mode
--------------------------------------
-- Better window navigation
keymap("n", "gh", "<C-w>h",opts)
keymap("n", "gj", "<C-w>j",opts)
keymap("n", "gk", "<C-w>k",opts)
keymap("n", "gl", "<C-w>l",opts)

keymap("n", "<C-Left>", ":vertical resize -3<CR>",opts)
keymap("n", "<C-Right>", ":vertical resize -3<CR>",opts)
keymap("n", "<C-Up>", ":resize +3<CR>",opts)
keymap("n", "<C-Down>", ":resize -3<CR>",opts)

-- Better window creation
keymap("n","<Leader>w", ":vertical split <CR>", opts) 
keymap("n","<Leader>vw", ":vertical split <CR>", opts) 
keymap("n","<Leader>hw", ":horizontal split <CR>", opts) 
keymap("n","<Leader>ww", ":horizontal split <CR>", opts) 

-- nav panel
keymap("n","<Leader>p", ":20Lexplore <CR>", opts) 

--------------------------------------
-- Terminal --
--------------------------------------
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
-- Better exit terminal
keymap("t", "<C-q>", "<C-\\><C-n>", term_opts)
