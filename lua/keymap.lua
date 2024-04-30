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

vim.keymap.set('n', '<Leader>-', '<cmd>tabp<CR>', opts)
vim.keymap.set('n', '<Leader>=', '<cmd>tabn<CR>', opts)

vim.keymap.set('n', '<Leader>\\', '<cmd>NvimTreeToggle<CR>', opts)
vim.keymap.set('n', '<Leader>|', '<cmd>NvimTreeFocus<CR>', opts)

vim.keymap.set('n', '<Leader>m', '<cmd>MarkdownPreviewToggle<CR>', opts)

-- lsp feat
--
-- definition
vim.keymap.set('n', '<Leader>gd', '<cmd>Lspsaga goto_definition<CR>', opts)
vim.keymap.set('n', '<Leader>pd', '<cmd>Lspsaga peek_definition<CR>', opts)
-- type definition
vim.keymap.set('n', '<Leader>gt', '<cmd>Lspsaga goto_type_definition<CR>', opts)
vim.keymap.set('n', '<Leader>pt', '<cmd>Lspsaga peek_type_definition<CR>', opts)
-- goto other places: declaration, implementation
vim.keymap.set('n', '<Leader>gD', vim.lsp.buf.declaration, opts)
vim.keymap.set('n', '<Leader>gi', vim.lsp.buf.implementation, opts)
-- references
vim.keymap.set('n', '<Leader>gr', '<cmd>Lspsaga finder<CR>')
-- rename
vim.keymap.set('n', '<Leader>rn', '<cmd>Lspsaga rename<CR>', opts)
-- hover
vim.keymap.set('n', '<Leader>K', '<cmd>Lspsaga hover_doc<CR>')
-- diagnostic info
vim.keymap.set('n', '<Leader>g[', '<cmd>Lspsaga diagnostic_jump_prev<CR>')
vim.keymap.set('n', '<Leader>g]', '<cmd>Lspsaga diagnostic_jump_next<CR>')
-- code action
vim.keymap.set('n', '<Leader>pa', '<cmd>Lspsaga code_action<CR>')

-- flaot terminal from Lspsaga
vim.keymap.set('n', '<Leader>t', '<cmd>Lspsaga term_toggle<CR>')

