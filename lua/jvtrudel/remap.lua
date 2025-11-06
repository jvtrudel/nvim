-- --------------------------------------
-- MOTION/NAVIGATION RELATED KEY BINDINGS

-- Close current window
vim.keymap.set("n", "<leader>q", vim.cmd.close)

-- switch to exploration mode
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- switch between windows
vim.keymap.set("n", "<leader>j", "<C-w>j")
vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>k", "<C-w>k")
vim.keymap.set("n", "<leader>l", "<C-w>l")

-- create new windows
vim.keymap.set("n", "<leader>wh", vim.cmd.vnew)
vim.keymap.set("n", "<leader>wl", function() vim.cmd("rightbelow vnew") end)
vim.keymap.set("n", "<leader>wk", vim.cmd.new)
vim.keymap.set("n", "<leader>wj", function() vim.cmd("rightbelow new") end)

-- Moving using legacy key key bindings awsd
--     conflict with other commands,
--     could be achieved by deactivating original command firts
-- vim.keymap.del("n", "a")  -- no such key bindings...
-- vim.keymap.set("n", "a", "<Left>")
-- vim.keymap.set("n", "s", "<Down>")
-- vim.keymap.set("n", "w", "<Up>")
-- vim.keymap.set("n", "d", "<Right>")

-- -----------------------------
-- TERMINAL RELATED KEY BINDINGS

-- Enter terminal MODE
vim.keymap.set("t", '<Esc>', '<C-\\><C-n>')

-- Open TERMINAL window at the LEFT of the current window
vim.keymap.set("n", "<leader>th", 
  function()
    vim.cmd.vnew()
    vim.cmd.term()
  end
)-- Open TERMINAL window at the RIGHT of the current window
vim.keymap.set("n", "<leader>tl", 
  function()
    vim.cmd("rightbelow vnew")
    vim.cmd.term()
  end
)
-- Open TERMINAL window at ABOVE of the current window
vim.keymap.set("n", "<leader>tk", 
  function()
    vim.cmd.new()
    vim.cmd.term()
  end
)-- Open TERMINAL window at BELOW of the current window
vim.keymap.set("n", "<leader>tj", 
  function()
    vim.cmd("rightbelow new")
    vim.cmd.term()
  end
)
 
