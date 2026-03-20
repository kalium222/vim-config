-- Basic Keymap

-- leaderkey should be defined before lazy-plug
-- it is defined in the lua/options.lua

local opts = {
  noremap = true,
  silent = true
}

local mappings = {
  -- windows jump
  { mode = 'n', lhs = '<Leader>h',  rhs = [[<C-w>h | <cmd>wall<CR>]],                 opts = opts },
  { mode = 'n', lhs = '<Leader>j',  rhs = [[<C-w>j | <cmd>wall<CR>]],                 opts = opts },
  { mode = 'n', lhs = '<Leader>k',  rhs = [[<C-w>k | <cmd>wall<CR>]],                 opts = opts },
  { mode = 'n', lhs = '<Leader>l',  rhs = [[<C-w>l | <cmd>wall<CR>]],                 opts = opts },
  -- tab page jump
  { mode = 'n', lhs = '<Leader>-',  rhs = '<cmd>tabp<CR> | <cmd>wall<CR>',            opts = opts },
  { mode = 'n', lhs = '<Leader>=',  rhs = '<cmd>tabn<CR> | <cmd>wall<CR>',            opts = opts },
  -- nvimtree
  { mode = 'n', lhs = '<Leader>\\', rhs = '<cmd>NvimTreeToggle<CR>',                  opts = opts },
  { mode = 'n', lhs = '<Leader>|',  rhs = '<cmd>NvimTreeFocus<CR>',                   opts = opts },
  -- Lspsaga
  -- definition
  { mode = 'n', lhs = 'gd',         rhs = '<cmd>Lspsaga goto_definition<CR>',         opts = opts },
  { mode = 'n', lhs = '<Leader>gd', rhs = '<cmd>Lspsaga goto_type_definition<CR>',    opts = opts },
  -- references
  { mode = 'n', lhs = 'gr',         rhs = '<cmd>Lspsaga finder<CR>',                  opts = opts },
  -- lsp format
  { mode = 'n', lhs = '<Leader>F',  rhs = vim.lsp.buf.format,                         opts = opts },
  -- rename
  { mode = 'n', lhs = '<Leader>rn', rhs = '<cmd>Lspsaga rename<CR>',                  opts = opts },
  -- hover
  { mode = 'n', lhs = 'K',          rhs = '<cmd>Lspsaga hover_doc<CR>',               opts = opts },
  -- diagnostic info
  { mode = 'n', lhs = '<Leader>d',  rhs = '<cmd>Lspsaga show_line_diagnostics<CR>',   opts = opts },
  { mode = 'n', lhs = '<Leader>D',  rhs = '<cmd>Lspsaga show_buf_diagnostics<CR>',    opts = opts },
  -- code action
  { mode = 'n', lhs = '<Leader>c',  rhs = '<cmd>Lspsaga code_action<CR>',             opts = opts },
  -- Telescope
  { mode = 'n', lhs = '<Leader>ff', rhs = '<cmd>Telescope find_files<CR>',            opts = opts },
  { mode = 'n', lhs = '<Leader>fg', rhs = '<cmd>Telescope live_grep<CR>',             opts = opts },
  { mode = 'n', lhs = '<Leader>fb', rhs = '<cmd>Telescope buffers<CR>',               opts = opts },
  { mode = 'n', lhs = '<Leader>fh', rhs = '<cmd>Telescope help_tags<CR>',             opts = opts },
  -- ToggleTerm
  { mode = 'n', lhs = '<Leader>ti', rhs = '<cmd>ToggleTerm direction=horizontal<CR>', opts = opts },
  { mode = 'n', lhs = '<Leader>tv', rhs = '<cmd>ToggleTerm direction=vertical<CR>',   opts = opts },
  { mode = 'n', lhs = '<Leader>tf', rhs = '<cmd>ToggleTerm direction=float<CR>',      opts = opts },
  { mode = 'n', lhs = '<Leader>tt', rhs = '<cmd>ToggleTerm direction=tab<CR>',        opts = opts },
  -- others
  { mode = 'n', lhs = '<Leader>,',  rhs = '<cmd>pop<CR>',                             opts = opts },
  { mode = 'n', lhs = '<Leader>.',  rhs = '<cmd>tag<CR>',                             opts = opts },
  { mode = 'n', lhs = '<C-t>',      rhs = '<Nop>',                                    opts = opts },
}

for _, map in ipairs(mappings) do
  vim.keymap.set(map.mode, map.lhs, map.rhs, map.opts)
end
