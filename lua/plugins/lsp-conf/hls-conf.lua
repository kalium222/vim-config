-- haskell language server

vim.lsp.enable('hls')
vim.lsp.config('hls', {
  filetypes = { 'haskell', 'lhaskell', 'cabal' },
})

return {}
