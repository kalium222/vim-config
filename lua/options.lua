-- Basic Config

-- tab
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- search
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true

-- backup file
vim.opt.backup = false
vim.opt.swapfile = false

vim.opt.history = 50

vim.opt.clipboard = 'unnamedplus'

vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.scrolloff = 10

vim.opt.cursorline = true
vim.opt.colorcolumn = "80"
vim.opt.signcolumn = "yes"
vim.opt.showmatch = true
vim.opt.wrap = false
vim.opt.showcmd = true
vim.opt.showmode = true
vim.opt.ruler = true

vim.cmd[[set guicursor=n-v-c-sm:block,i-ci-ve:hor20,r-cr-o:hor50]]

vim.cmd[[
    filetype on
    filetype plugin on
    filetype indent on
    syntax on
    autocmd TermOpen * startinsert
    set nomodeline
]]

vim.g.mapleader = "\t"
