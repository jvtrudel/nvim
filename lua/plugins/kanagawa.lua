return {
 "rebelot/kanagawa.nvim", opt =  {},
 config = function()
   require("kanagawa").setup({
     compile = true,
     transparent = true
   });
   vim.cmd("colorscheme kanagawa");
 end,
 build = function()
   vim.cmd("KanagawaCompile");   -- this line fail at first install
 end,
}
