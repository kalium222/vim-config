local bufferline = {
    'akinsho/bufferline.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    lazy = true,
    event = "BufEnter",
    opts = {
        options = {
            diagnostics = "nvim_lsp",
            separator_style = "slant",
            mode = "tabs",
            indicator = {
                style = "underline"
            },
            offsets = {
                {
                    filetype = "NvimTree",
                    text = "NvimTree",
                    text_align = "left",
                    separator = true,
                }
            },
        }
    }
}

return bufferline

