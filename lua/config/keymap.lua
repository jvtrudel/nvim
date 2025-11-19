
local km = vim.keymap.set

--remaps
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- oil
vim.keymap.set('n', "-", "<cmd>Oil --float<CR>", { desc ="Enter file explorer (Oil)" })

vim.keymap.set('n', "w", "<cmd>w<CR>", { desc = "Save" } )
vim.keymap.set('n', "<leader>w", "<cmd>w<CR>", { desc = "Save" } )
vim.keymap.set('n', "q", "<cmd>q<CR>", { desc = "Quit without saving" } ) 
vim.keymap.set('n', "<leader>q", "<cmd>q<CR>", { desc = "Quit without saving" } ) 
vim.keymap.set('n', "<leader>wq", "<cmd>wq<CR>", { desc = "Save and quit" } ) 
vim.keymap.set('n', "<leader>qq", "<cmd>q!<CR>", { desc = "Force to quit without saving" } ) 


-- switch between windows
vim.keymap.set("n", "<leader>h", "<C-w><Left>")
vim.keymap.set("n", "<leader>j", "<C-w><Down>")
vim.keymap.set("n", "<leader>k", "<C-w><Up>")
vim.keymap.set("n", "<leader>l", "<C-w><Right>")

-- TERMINAL
-- exit t mode
km("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode"})
km("n", "<leader>t" , function()
print("open terminal")
 -- function OpenTerminal()
    local buf = vim.api.nvim_get_current_buf()
    local dir = vim.fn.expand('%:p:h')  -- if in a file
    if vim.bo[buf].buftype == "terminal" then
--[[      local channel = vim.b[buf].terminal_job_id
      
      vim.fn.term_sendkeys(buf, "pwd | wl-copy")  --  TODO: manage dependency on wl-cliipboard
      local clip_content = vim.fn.system('wl-paste')
      dir = vim.trim(clip_content)
    ]]

    -- TODO: implement
    -- see : https://gist.github.com/cowlicks/5d70685346bf341a71f26e564b795a76
  elseif vim.startswith(dir, 'oil://') then  -- if in an Oil buffer
      dir = string.sub(dir, 7)  -- Strip 'oil://' prefix
      if vim.api.nvim_buf_get_option(0, "buftype") == "nofile" then -- is in a float
        vim.cmd.q()
    end
    end
    vim.cmd('lcd ' .. dir)
    vim.cmd('terminal')
  end
  , { desc = "Create a terminal in the current 'context'" }
)


-- todo: this is not robust... add autocompletion and verify that file exists
vim.keymap.set("n", "<leader>e", function()
  local file_name = vim.fn.input("Open file: ")
  if file_name ~= "" then
    vim.cmd(":edit " .. file_name)
  end
end, { desc = "edit a file"})

-- BUFFERS navigation and manipulation
vim.keymap.set("n","<leader>ls", "<cmd>ls<CR>", { desc = "list buffers" })
vim.keymap.set("n","<leader>f", "<cmd>bnext<CR>", { desc = "goto next buffers" })
vim.keymap.set("n","<leader>d", "<cmd>bprevious<CR>", { desc = "goto previous buffers" })
vim.keymap.set("n","<leader>c", "<cmd>bd<CR>", { desc = "close buffers" })


-- CUSTOM HELP FILES
vim.keymap.set("n", "<leader>hh", function()
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

