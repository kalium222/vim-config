-- csharp-ls

require'lspconfig'.csharp_ls.setup {
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
    cmd = { "/home/Kalium/.dotnet/tools/csharp-ls" },
}

return {}
