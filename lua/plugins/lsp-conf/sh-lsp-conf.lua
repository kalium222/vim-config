-- bash-language-server

require('lspconfig').bashls.setup {
    capalilities = require('cmp_nvim_lsp').default_capabilities(),
}

return {}
