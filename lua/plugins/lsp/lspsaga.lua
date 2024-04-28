local lspsaga = {
    'nvimdev/lspsaga.nvim',
    event = "VeryLazy",
    dependencies = {
        "neovim/nvim-lspconfig",
        'nvim-treesitter/nvim-treesitter', -- optional
        'nvim-tree/nvim-web-devicons',     -- optional
    },
    config = true,
}

return lspsaga

