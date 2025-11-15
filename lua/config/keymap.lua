vim.keymap.set('n', "-", "<cmd>Oil --float<CR>", { desc ="Enter file explorer (Oil)" })

vim.keymap.set('n', "w", "<cmd>w<CR>", { desc = "Save" } )
vim.keymap.set('n', "<leader>w", "<cmd>w<CR>", { desc = "Save" } )
vim.keymap.set('n', "q", "<cmd>q<CR>", { desc = "Quit without saving" } ) 
vim.keymap.set('n', "<leader>q", "<cmd>q<CR>", { desc = "Quit without saving" } ) 
vim.keymap.set('n', "<leader>wq", "<cmd>wq<CR>", { desc = "Save and quit" } ) 
vim.keymap.set('n', "<leader>qq", "<cmd>q!<CR>", { desc = "Force to quit without saving" } ) 


-- todo: this is not robust... add autocompletion and verify that file exists
vim.keymap.set("n", "<leader>e", function()
  local file_name = vim.fn.input("Open file: ")
  if file_name ~= "" then
    vim.cmd(":edit " .. file_name)
  end
end, { desc = "edit a file"})   

vim.keymap.set("n","<leader>ls", "<cmd>ls<CR>", { desc = "list buffers" })
vim.keymap.set("n","<leader>f", "<cmd>bnext<CR>", { desc = "goto next buffers" })
vim.keymap.set("n","<leader>d", "<cmd>bprevious<CR>", { desc = "goto previous buffers" })
vim.keymap.set("n","<leader>c", "<cmd>bd<CR>", { desc = "close buffers" })

vim.keymap.set("n", "<leader>h", function()
  local config_path = vim.fn.stdpath('config')
  local readme_path = config_path .. '/CHEATSHEET.md'
  local buf = vim.fn.bufadd(readme_path)
  vim.fn.bufload(buf)
  local win = vim.api.nvim_open_win(buf, true, {
    relative = 'editor',
    width = 80,
    height = 20,
    col = (vim.o.columns - 80) / 2,
    row = (vim.o.lines - 100) / 2,
    style = 'minimal'
  })
  vim.api.nvim_win_set_option(win, 'number', false)
end, { desc = "Open CHEATSHEET.md"})

vim.keymap.set("n", "<leader>hr", function()
  local config_path = vim.fn.stdpath('config')
  local readme_path = config_path .. '/README.md'
  local buf = vim.fn.bufadd(readme_path)
  vim.fn.bufload(buf)
  local win = vim.api.nvim_open_win(buf, true, {
    relative = 'editor',
    width = 80,
    height = 20,
    col = (vim.o.columns - 80) / 2,
    row = (vim.o.lines - 100) / 2,
    style = 'minimal'
  })
  vim.api.nvim_win_set_option(win, 'number', false)
end, { desc = "Open CHEATSHEET.md"})

