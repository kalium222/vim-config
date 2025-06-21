-- diagnose sign
-- use like:
-- vim.fn.sign_define('DiagnosticSignError', { text = '😰', texthl = 'DiagnosticSignError' })
local signs = {
  Error = { text = "😰", texthl = "DiagnosticSignError" },
  Warn  = { text = "😅", texthl = "DiagnosticSignWarn" },
  Info  = { text = "🤗", texthl = "DiagnosticSignInfo" },
  Hint  = { text = "🤨", texthl = "DiagnosticSignHint" },
}
for name, sign in pairs(signs) do
  vim.fn.sign_define("DiagnosticSign" .. name, sign)
end

-- modify some ugly colour group
vim.api.nvim_set_hl(0, '@variable.python', { fg = '#AAAAAA' })
vim.api.nvim_set_hl(0, 'cConditional', { fg = '#FF8800' })

-- enable inlay_hint
vim.lsp.inlay_hint.enable(true, nil)

-- config folding behaviour and format
vim.o.foldlevel = 1
-- NOTE: why this work?
vim.o.foldtext = vim.fn.getline(vim.v.foldstart)
-- vim.o.foldtext = 'getline(v:foldstart)'
-- vim.opt.foldtext = 'v:lua.PrettyFoldText()'
--
-- function _G.PrettyFoldText()
--   local fs, fe = vim.v.foldstart, vim.v.foldend
--   local line_count = fe - fs + 1
--   local first_line = vim.fn.getline(fs)
--   return string.format("%s 󰁔 %d lines ", first_line, line_count)
-- end
