local telescope = {
    'nvim-telescope/telescope.nvim',
    lazy = false,
    dependencies = {
        'nvim-lua/plenary.nvim',
        "nvim-treesitter/nvim-treesitter",
    },
    opts = {
        defaults = {
            mappings = {
                n = {
                    ["o"] = "select_default",
                    ["s"] = "select_vertical",
                    ["i"] = "select_horizontal",
                    ["t"] = "select_tab",
                },
            },
        },
    },
}

return telescope
