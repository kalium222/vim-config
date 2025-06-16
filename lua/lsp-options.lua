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

vim.api.nvim_set_hl(0, '@variable.python', { fg = '#AAAAAA' })
vim.api.nvim_set_hl(0, 'cConditional', { fg = '#FF8800' })

vim.lsp.inlay_hint.enable(true, nil)

vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
