-- Basic Neovim settings
vim.cmd('set expandtab') -- Enable the use of spaces instead of tabs
vim.cmd('set tabstop=2') -- Number of spaces that a <Tab> in the file counts for
vim.cmd('set softtabstop=2') -- Number of spaces that a <Tab> counts for while performing editing operations
vim.cmd('set shiftwidth=2') -- Size of an 'indent'

-- Path for the lazy loader
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Clone the lazy.nvim plugin if it doesn't exist
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git", "--branch=stable", -- latest stable release
        lazypath
    })
end

-- Prepend the runtime path with the lazy loader path
vim.opt.rtp:prepend(lazypath)

-- Plugin configuration
local plugins = {
    {"catppuccin/nvim", name = "catppuccin", priority = 1000}, -- Catppuccin theme plugin
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5', -- Specific version tag
        dependencies = {'nvim-lua/plenary.nvim'} -- Dependency for telescope
    }
}

local opts = {} -- Options for the lazy loader, empty if default

-- Setup the lazy loader with the defined plugins
require("lazy").setup(plugins, opts)

-- Telescope setup
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {}) -- Key mapping for telescope find_files function

-- Catppuccin theme setup and application
require("catppuccin").setup() -- Setup Catppuccin theme
vim.cmd("colorscheme catppuccin") -- Apply Catppuccin colorscheme
