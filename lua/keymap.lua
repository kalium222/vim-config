-- Basic Keymap

-- leaderkey should be defined before lazy-plug
-- it is defined in the lua/options.lua

local opts = {
    noremap = true,
    silent = false
}

vim.keymap.set('n', '<Leader>h', [[<C-w>h | :wall<CR>]], opts)
vim.keymap.set('n', '<Leader>j', [[<C-w>j | :wall<CR>]], opts)
vim.keymap.set('n', '<Leader>k', [[<C-w>k | :wall<CR>]], opts)
vim.keymap.set('n', '<Leader>l', [[<C-w>l | :wall<CR>]], opts)

vim.keymap.set('n', '<Leader>p', '<cmd>tabp<CR>', opts)
vim.keymap.set('n', '<Leader>n', '<cmd>tabn<CR>', opts)

vim.keymap.set('n', '<Leader>\\', '<cmd>NvimTreeToggle<CR>', opts)

