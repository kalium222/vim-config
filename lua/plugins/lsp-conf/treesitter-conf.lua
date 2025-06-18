-- nvim-treesitter config

-- get treesitter plugin
require('nvim-treesitter').install({
    'haskell',
})

-- highlighting
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'c', 'lua', 'haskell' },
  callback = function() vim.treesitter.start() end,
})

-- folding
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'

-- indentating
-- experimental, disable it
-- vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"

return {}
