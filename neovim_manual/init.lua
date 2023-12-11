-- Basic Neovim settings
vim.cmd('set expandtab')
vim.cmd('set tabstop=2')
vim.cmd('set softtabstop=2')
vim.cmd('set shiftwidth=2')

-- Path for lazy loader
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Clone lazy.nvim if it doesn't exist
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git", "--branch=stable", -- latest stable release
        lazypath
    })
end

-- Prepend the runtime path
vim.opt.rtp:prepend(lazypath)

-- Plugin configuration
local plugins = {{"catppuccin/nvim", name = "catppuccin", priority = 1000}}

local opts = {}

-- Setup lazy loader
require("lazy").setup(plugins, opts)
require("catppuccin").setup()
vim.cmd("colorscheme catppuccin")
