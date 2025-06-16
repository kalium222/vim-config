local lspsaga = {
    'nvimdev/lspsaga.nvim',
    dependencies = {
        "neovim/nvim-lspconfig",
        'nvim-treesitter/nvim-treesitter', -- optional
        'nvim-tree/nvim-web-devicons',     -- optional
    },
    lazy = false,
    config = true,
    opts = {
        code_action = {
            extend_gitsigns = true,
        },
    },
}

return lspsaga

