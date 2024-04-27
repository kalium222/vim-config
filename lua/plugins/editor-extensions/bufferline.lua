local bufferline = {
    'akinsho/bufferline.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
        options = {
            mode = "tabs",
            indicator = {
                style = "underline"
            }
        }
    }
}

return bufferline

