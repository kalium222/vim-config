-- Basic Keymap

-- leaderkey should be defined before lazy-plug
-- it is defined in the lua/options.lua

local default_opts = {
  noremap = true,
  silent = true,
}

---@class Mapping
---@field [1] string          lhs
---@field [2] string|function rhs
---@field mode? string        default 'n'
---@field opts? table         merged onto default_opts

---@type Mapping[]
local mappings = {
  -- windows jump
  -- { '<Leader>h',  [[<C-w>h | <cmd>wall<CR>]] },
  -- { '<Leader>j',  [[<C-w>j | <cmd>wall<CR>]] },
  -- { '<Leader>k',  [[<C-w>k | <cmd>wall<CR>]] },
  -- { '<Leader>l',  [[<C-w>l | <cmd>wall<CR>]] },
  -- tab page jump
  -- { '<Leader>-',  '<cmd>tabp<CR> | <cmd>wall<CR>' },
  -- { '<Leader>=',  '<cmd>tabn<CR> | <cmd>wall<CR>' },
  -- nvimtree
  -- { '<Leader>\\', '<cmd>NvimTreeToggle<CR>' },
  -- { '<Leader>|',  '<cmd>NvimTreeFocus<CR>' },
  -- Lspsaga
  -- { 'gd',         '<cmd>Lspsaga goto_definition<CR>' },
  -- { 'gt',         '<cmd>Lspsaga goto_type_definition<CR>' },
  -- { 'gr',         '<cmd>Lspsaga finder<CR>' },
  -- { '<Leader>F',  vim.lsp.buf.format },
  -- { '<Leader>rn', '<cmd>Lspsaga rename<CR>' },
  -- { 'K',          '<cmd>Lspsaga hover_doc<CR>' },
  -- { '<Leader>d',  '<cmd>Lspsaga show_line_diagnostics<CR>' },
  -- { '<Leader>D',  '<cmd>Lspsaga show_buf_diagnostics<CR>' },
  -- { '<Leader>c',  '<cmd>Lspsaga code_action<CR>' },
  -- Telescope
  -- { '<Leader>ff', '<cmd>Telescope find_files<CR>' },
  -- { '<Leader>fg', '<cmd>Telescope live_grep<CR>' },
  -- { '<Leader>fb', '<cmd>Telescope buffers<CR>' },
  -- { '<Leader>fh', '<cmd>Telescope help_tags<CR>' },
  -- ToggleTerm
  -- { '<Leader>ti', '<cmd>ToggleTerm direction=horizontal<CR>' },
  -- { '<Leader>tv', '<cmd>ToggleTerm direction=vertical<CR>' },
  -- { '<Leader>tf', '<cmd>ToggleTerm direction=float<CR>' },
  -- { '<Leader>tt', '<cmd>ToggleTerm direction=tab<CR>' },
  -- others
  -- { '<Leader>,',  '<cmd>pop<CR>' },
  -- { '<Leader>.',  '<cmd>tag<CR>' },
  -- { '<C-t>',      '<Nop>' },
}

for _, m in ipairs(mappings) do
  vim.keymap.set(m.mode or 'n', m[1], m[2], vim.tbl_extend('force', default_opts, m.opts or {}))
end
