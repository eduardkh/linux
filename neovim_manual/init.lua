-- Basic Neovim settings
vim.cmd('set expandtab') -- Enable the use of spaces instead of tabs for indentation
vim.cmd('set tabstop=2') -- Number of spaces a tab character represents
vim.cmd('set softtabstop=2') -- Number of spaces used for auto-indentation
vim.cmd('set shiftwidth=2') -- Number of spaces to use for each step of (auto)indent
vim.g.mapleader = " " -- Set the Leader key to spacebar

-- Path for the lazy loader
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Clone the lazy.nvim plugin if it doesn't exist
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git", "--branch=stable", -- Clone the stable branch of lazy.nvim
        lazypath
    })
end

-- Prepend the runtime path with the lazy loader path
vim.opt.rtp:prepend(lazypath)

-- Plugin configuration
local plugins = {
    {"catppuccin/nvim", name = "catppuccin", priority = 1000}, -- Catppuccin theme plugin configuration
    {
        'nvim-telescope/telescope.nvim', -- Telescope plugin for extended navigation and searching
        tag = '0.1.5', -- Use specific version tag
        dependencies = {'nvim-lua/plenary.nvim'} -- Dependencies required by Telescope
    }, {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"} -- Treesitter plugin for better syntax highlighting
}

local opts = {} -- Options for the lazy loader; empty for defaults

-- Setup the lazy loader with the defined plugins
require("lazy").setup(plugins, opts)

-- Telescope setup with key mappings
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {}) -- Map Ctrl-p to Telescope's find_files function
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {}) -- Map Leader+fg to Telescope's live_grep function

-- Treesitter configuration
local configs = require("nvim-treesitter.configs")
configs.setup({
    ensure_installed = {"lua", "javascript", "html"}, -- List of languages to be installed
    highlight = {enable = true}, -- Enable Treesitter-based highlighting
    indent = {enable = true} -- Enable Treesitter-based indentation
})

-- Catppuccin theme setup and application
require("catppuccin").setup() -- Initialize the Catppuccin theme
vim.cmd("colorscheme catppuccin") -- Set Catppuccin as the current colorscheme
