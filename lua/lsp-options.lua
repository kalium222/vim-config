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
