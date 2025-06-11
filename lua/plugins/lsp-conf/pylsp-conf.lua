-- pylsp

vim.lsp.enable('pylsp')
vim.lsp.config('pylsp', {
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          ignore = {'W391', 'W191', 'E302'},
          maxLineLength = 100
        }
      }
    }
  }
})

return {}
