-- --------------------------------------
-- MOTION/NAVIGATION RELATED KEY BINDINGS

-- Close current window
vim.keymap.set("n", "<leader>q", vim.cmd.close)

-- switch to exploration mode
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- switch between windows
vim.keymap.set("n", "<leader>wj", "<C-w>j")
vim.keymap.set("n", "<leader>wh", "<C-w>h")
vim.keymap.set("n", "<leader>wk", "<C-w>k")
vim.keymap.set("n", "<leader>wl", "<C-w>l")


-- create new windows
vim.keymap.set("n", "<leader>wwh", vim.cmd.vnew)
vim.keymap.set("n", "<leader>wwl", function() vim.cmd("rightbelow vnew") end)
vim.keymap.set("n", "<leader>wwk", vim.cmd.new)
vim.keymap.set("n", "<leader>wwj", function() vim.cmd("rightbelow new") end)


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
 
