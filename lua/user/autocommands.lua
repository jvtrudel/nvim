vim.cmd [[
  augroup _startup_settings
    autocmd!
    autocmd VimEnter * NvimTreeToggle
    autocmd VimEnter * wincmd l
    autocmd VimEnter * 14sp
    autocmd VimEnter * terminal
    autocmd VimEnter * wincmd k
  augroup end
]]
