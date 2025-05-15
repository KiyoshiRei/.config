vim.g.mapleader = " " -- leader is space

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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

require("lazy").setup("plugins")

vim.o.background = "dark" -- or "light" for light mode

vim.opt.clipboard = 'unnamedplus'
vim.opt.number = true
vim.opt.relativenumber = true

-- Set tab spacing like VS Code (4 spaces per tab)
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.shiftwidth = 4 -- Indent level of 4 spaces
vim.opt.tabstop = 4 -- Tabs are 4 spaces wide

vim.opt.wrap = true -- Enable line wrapping
vim.opt.linebreak = true -- Prevent breaking words mid-line
vim.keymap.set("n", "j", "gj", { silent = true, noremap = true }) -- Navigate visual lines with 'j'
vim.keymap.set("n", "k", "gk", { silent = true, noremap = true }) -- Navigate visual lines with 'k'
