-- pyright and ruff
vim.lsp.config('pyright', {
    capabilities = (function()
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities.textDocument.publishDiagnostics.tagSupport.valueSet = { 2 }
        return capabilities
    end)(),
    settings = {
        python = {
            analysis = {
                useLibraryCodeForTypes = true,
                diagnosticSeverityOverrides = {
                    reportUnusedVariable = "warning",
                },
                typeCheckingMode = "off", -- Set type-checking mode to off
                diagnosticMode = "off",   -- Disable diagnostics entirely
            },
        },
    },
})
vim.lsp.enable('pyright')
vim.lsp.enable('ruff')
return {}
