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
require("highlight")
require("keymaps")
require("lazy").setup("plugins")

local has = function (x)
    return vim.fn.has(x) == 1
end

local is_mac = has 'macunix'
local is_window = has 'win32'
local is_linux = has 'unix'

if is_mac then
    require('macos')
end

if is_window then
    require('window')
end

if is_mac then
    require('linux')
end
