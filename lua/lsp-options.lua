-- NOTE: config for nvim lsp client support

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

-- folding
vim.o.foldmethod = 'expr'
-- Default to treesitter folding
vim.o.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
-- Prefer LSP folding if client supports it
vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if client and client:supports_method('textDocument/foldingRange') then
            local win = vim.api.nvim_get_current_win()
            vim.wo[win][0].foldexpr = 'v:lua.vim.lsp.foldexpr()'
        end
    end,
})
-- folding with lsp
vim.o.foldlevel = 5

-- NOTE: why this work?
-- change folding style
vim.o.foldtext = vim.fn.getline(vim.v.foldstart)
-- NOTE: shouldn't be like this?
-- vim.o.foldtext = 'getline(v:foldstart)'
-- vim.opt.foldtext = 'v:lua.PrettyFoldText()'
-- function _G.PrettyFoldText()
--   local fs, fe = vim.v.foldstart, vim.v.foldend
--   local line_count = fe - fs + 1
--   local first_line = vim.fn.getline(fs)
--   return string.format("%s 󰁔 %d lines ", first_line, line_count)
-- end
