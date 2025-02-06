-- pylsp
require'lspconfig'.pylsp.setup{
  capabilities = require('cmp_nvim_lsp').default_capabilities(),
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
}

return {}

