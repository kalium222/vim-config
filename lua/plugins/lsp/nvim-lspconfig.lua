local lspconfig = {
    "neovim/nvim-lspconfig",
    lazy = true,
    event = {
        "BufNewFile",
        "BufRead",
    },
}

return lspconfig

