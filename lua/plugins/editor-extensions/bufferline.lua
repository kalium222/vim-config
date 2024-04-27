local bufferline = {
    'akinsho/bufferline.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require('bufferline').setup {
            options = {
                mode = "tabs",
                indicator = {
                    style = "underline"
                },
            },
        }
    end,
}

return bufferline
