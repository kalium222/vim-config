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
vim.o.foldlevel = 1

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
--
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('my.lsp', {}),
  callback = function(args)
    local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
    if client:supports_method('textDocument/implementation') then
      -- Create a keymap for vim.lsp.buf.implementation ...
    end

    -- Enable auto-completion. Note: Use CTRL-Y to select an item. |complete_CTRL-Y|
    -- if client:supports_method('textDocument/completion') then
      -- Optional: trigger autocompletion on EVERY keypress. May be slow!
      -- local chars = {}; for i = 32, 126 do table.insert(chars, string.char(i)) end
      -- client.server_capabilities.completionProvider.triggerCharacters = chars

    --   vim.lsp.completion.enable(true, client.id, args.buf, {autotrigger = true})
    -- end

    -- Auto-format ("lint") on save.
    -- Usually not needed if server supports "textDocument/willSaveWaitUntil".
    if not client:supports_method('textDocument/willSaveWaitUntil')
        and client:supports_method('textDocument/formatting') then
      vim.api.nvim_create_autocmd('BufWritePre', {
        group = vim.api.nvim_create_augroup('my.lsp', {clear=false}),
        buffer = args.buf,
        callback = function()
          vim.lsp.buf.format({ bufnr = args.buf, id = client.id, timeout_ms = 1000 })
        end,
      })
    end
  end,
})
