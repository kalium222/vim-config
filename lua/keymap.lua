-- Keymap

local opts = {
    noremap = true,
    silent = true
}

-- vim.g.mapleader = "<Tab>"
vim.cmd[[
    let mapleader = "\<Tab>"
]]

vim.keymap.set('n', '<Leader>h', '<C-w>h', opts)
vim.keymap.set('n', '<Leader>j', '<C-w>j', opts)
vim.keymap.set('n', '<Leader>k', '<C-w>k', opts)
vim.keymap.set('n', '<Leader>l', '<C-w>l', opts)

