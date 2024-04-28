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
vim.keymap.set('n', '<Leader>|', '<cmd>NvimTreeFocus<CR>', opts)

vim.keymap.set('n', '<Leader>m', '<cmd>MarkdownPreviewToggle<CR>', opts)

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

vim.keymap.set('n', '<Leader>gd', vim.lsp.buf.definition, {})
vim.keymap.set('n', '<Leader>gD', vim.lsp.buf.declaration, {})
vim.keymap.set('n', '<Leader>gi', vim.lsp.buf.implementation, {})
vim.keymap.set('n', '<Leader>gr', vim.lsp.buf.references, {})
vim.keymap.set('n', '<Leader>rn', vim.lsp.buf.rename, {})
vim.keymap.set('n', '<Leader>K', vim.lsp.buf.hover, {})

