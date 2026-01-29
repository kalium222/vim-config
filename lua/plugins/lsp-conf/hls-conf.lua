-- haskell language server
vim.lsp.config('hls', {
  filetypes = { 'haskell', 'lhaskell', 'cabal' },
  cmd = { "haskell-language-server-wrapper", "--lsp" },
  settings = {
    haskell = {
      cabalFormattingProvider = "cabalfmt",
      formattingProvider = "ormolu",
      plugin = {
        rename = { config = { crossModule = true }}
      },
    },
  },
})
vim.lsp.enable('hls')
return {}
