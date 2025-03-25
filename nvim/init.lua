vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
vim.opt.number = true
vim.opt.relativenumber = true
require("lazy").setup("plugins")
local builtin = require("telescope.builtin")
vim.keymap.set('n','<C-f>', builtin.find_files, {})
require("catppuccin").setup()
vim.keymap.set('n','<C-n>', ':Neotree filesystem reveal left <CR>', {})
vim.cmd.colorscheme "catppuccin"
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
require("lazy").setup({{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}})
local config = require("nvim-treesitter.configs")
config.setup({
  ensure_installed = {"lua","javascript"},
  highlight = {enable = true},
  indent = { enable = true },

})
