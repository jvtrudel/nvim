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
keymap("n", "<leader>h", "<C-w>h",opts)
keymap("n", "<leader>j", "<C-w>j",opts)
keymap("n", "<leader>k", "<C-w>k",opts)
keymap("n", "<leader>l", "<C-w>l",opts)

keymap("n", "<C-Left>", ":vertical resize -3<CR>",opts)
keymap("n", "<C-Right>", ":vertical resize -3<CR>",opts)
keymap("n", "<C-Up>", ":resize +3<CR>",opts)
keymap("n", "<C-Down>", ":resize -3<CR>",opts)

-- Better window creation
keymap("n","<Leader>w", ":vertical split <CR>", opts) 
keymap("n","<Leader>vw", ":vertical split <CR>", opts) 
keymap("n","<Leader>hw", ":horizontal split <CR>", opts) 
keymap("n","<Leader>ww", ":horizontal split <CR>", opts) 

-- Better window close
keymap("n","<Leader>q", ":q <CR>", opts) 

-- nav panel
keymap("n","<Leader>p", ":NvimTreeToggle <CR>", opts) 

-- Better Save and close
keymap("n","<Leader>qq", ":wqa <CR>", opts) 

--------------------------------------
-- Terminal --
--------------------------------------
-- Better new terminal
keymap("n", "<Leader>t", ":horizontal botright 15new <CR> :terminal <CR>", term_opts)

-- Better terminal navigation
keymap("t", "<Leader>h", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<Leader>j", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<Leader>k", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<Leader>l", "<C-\\><C-N><C-w>l", term_opts)
-- Better exit terminal
keymap("t", "<Leader>q", "<C-\\><C-n>", term_opts)
