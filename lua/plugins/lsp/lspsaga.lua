local lspsaga = {
    'nvimdev/lspsaga.nvim',
    event = "VeryLazy",
    dependencies = {
        "neovim/nvim-lspconfig",
        'nvim-treesitter/nvim-treesitter', -- optional
        'nvim-tree/nvim-web-devicons',     -- optional
    },
    config = true,
    opts = {
        code_action = {
            extend_gitsigns = true,
        },
    },
}

return lspsaga

