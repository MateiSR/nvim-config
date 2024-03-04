local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("vim-options")
require("lazy").setup("plugins")

local compile_and_run = require('compile_and_run')
vim.api.nvim_set_keymap('n', '<leader>cr', ':lua require("compile_and_run").CompileAndRun()<CR>', {noremap = true, silent = true})
