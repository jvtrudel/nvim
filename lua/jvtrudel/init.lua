require("jvtrudel.remap")
require("jvtrudel.terminal")

-- Useful functions

_G.is_ex = function(bufnb)
	bufnb = bufnb or 0
	return vim.api.nvim_buf_get_option(bufnb,"filetype") == "netrw"
end


-- Line numbering
vim.wo.number = true
vim.wo.relativenumber = true

-- Start in exploration mode if no file selected
arg = vim.fn.expand(vim.fn.argv(0))
arg_is_dir=vim.fn.isdirectory(arg)
arg_is_file=vim.fn.filereadable(arg)

if (arg == "" ) then
  dir = vim.fn.expand("%:p:h")
  vim.cmd.Ex(vim.fn.fnameescape(dir))
elseif (arg_is_dir == 1) then
  dir = vim.fn.expand("%:p")
  vim.cmd.Ex(vim.fn.fnameescape(dir))
elseif (arg_is_file ~= 1) then
  print("'",arg,"' is neither a valid file nor a directory. Open in current directory")
  dir = vim.env.PWD
  vim.cmd.Ex(vim.fn.fnameescape(dir))
end
