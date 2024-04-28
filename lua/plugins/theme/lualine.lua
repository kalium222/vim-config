local lualine = {
    'nvim-lualine/lualine.nvim',
    lazy = true,
    event = "BufEnter",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
        options = {
            theme = "gruvbox"
        }
    }
}

return lualine

