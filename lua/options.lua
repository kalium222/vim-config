-- Basic Config

vim.opt.number = true
vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.opt.showmatch = true
vim.opt.wrap = false
vim.opt.showcmd = true
vim.opt.showmode = true
vim.opt.ruler = true

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true

vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true

vim.opt.backup = false
vim.opt.swapfile = false

vim.opt.history = 100
vim.opt.clipboard = 'unnamedplus'

vim.cmd[[
    filetype on
    filetype plugin on
    filetype indent on
    syntax on
    autocmd TermOpen * startinsert
]]

vim.cmd[[
    let mapleader = "\<Tab>"
]]

