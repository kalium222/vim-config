-- Basic Keymap

-- leaderkey should be defined before lazy-plug
-- it is defined in the lua/options.lua

local opts = {
    noremap = true,
    silent = false
}

local mappings = {
    -- windows jump
    { mode = 'n', lhs = '<Leader>h', rhs = [[<C-w>h | :wall<CR>]], opts = opts },
    { mode = 'n', lhs = '<Leader>j', rhs = [[<C-w>j | :wall<CR>]], opts = opts },
    { mode = 'n', lhs = '<Leader>k', rhs = [[<C-w>k | :wall<CR>]], opts = opts },
    { mode = 'n', lhs = '<Leader>l', rhs = [[<C-w>l | :wall<CR>]], opts = opts },
    -- tab page jump
    { mode = 'n', lhs = '<Leader>-', rhs = '<cmd>tabp<CR> | <cmd>wall<cr>', opts = opts },
    { mode = 'n', lhs = '<Leader>=', rhs = '<cmd>tabn<CR> | <cmd>wall<cr>', opts = opts },
    -- nvimtree
    { mode = 'n', lhs = '<Leader>\\', rhs = '<cmd>NvimTreeToggle<CR>', opts = opts },
    { mode = 'n', lhs = '<Leader>|', rhs = '<cmd>NvimTreeFocus<CR>', opts = opts },
    -- markdown preview
    { mode = 'n', lhs = '<Leader>m', rhs = '<cmd>MarkdownPreviewToggle<CR>', opts = opts },
    -- Lspsaga
    -- definition
    { mode = 'n', lhs = '<Leader>gd', rhs = '<cmd>Lspsaga goto_definition<CR>', opts = opts },
    { mode = 'n', lhs = '<Leader>pd', rhs = '<cmd>Lspsaga peek_definition<CR>', opts = opts },
    -- type definition
    { mode = 'n', lhs = '<Leader>gt', rhs = '<cmd>Lspsaga goto_type_definition<CR>', opts = opts },
    { mode = 'n', lhs = '<Leader>pt', rhs = '<cmd>Lspsaga peek_type_definition<CR>', opts = opts },
    -- goto other places: declaration, implementation
    { mode = 'n', lhs = '<Leader>gD', rhs = vim.lsp.buf.declaration, opts = opts },
    { mode = 'n', lhs = '<Leader>gi', rhs = vim.lsp.buf.implementation, opts = opts },
    -- references
    { mode = 'n', lhs = '<Leader>gr', rhs = '<cmd>Lspsaga finder<CR>' },
    -- rename
    { mode = 'n', lhs = '<Leader>rn', rhs = '<cmd>Lspsaga rename<CR>', opts = opts },
    -- hover
    { mode = 'n', lhs = '<Leader>K', rhs = '<cmd>Lspsaga hover_doc<CR>' },
    -- diagnostic info
    { mode = 'n', lhs = '<Leader>g[', rhs = '<cmd>Lspsaga diagnostic_jump_prev<CR>' },
    { mode = 'n', lhs = '<Leader>g]', rhs = '<cmd>Lspsaga diagnostic_jump_next<CR>' },
    -- code action
    { mode = 'n', lhs = '<Leader>pa', rhs = '<cmd>Lspsaga code_action<CR>' },
    -- Lspsaga float terminal
    { mode = 'n', lhs = '<Leader>t', rhs = [[:wall<CR> | :Lspsaga term_toggle<CR>]] },
    -- Telescope
    { mode = 'n', lhs = '<Leader>ff', rhs = '<cmd>Telescope find_files<CR>', opts = opts },
    { mode = 'n', lhs = '<Leader>fg', rhs = '<cmd>Telescope live_grep<CR>', opts = opts },
    { mode = 'n', lhs = '<Leader>fb', rhs = '<cmd>Telescope buffers<CR>', opts = opts },
    { mode = 'n', lhs = '<Leader>fh', rhs = '<cmd>Telescope help_tags<CR>', opts = opts },
}

for _, map in ipairs(mappings) do
    vim.keymap.set(map.mode, map.lhs, map.rhs, map.opts)
end
