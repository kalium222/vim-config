local comment = {
    'numToStr/Comment.nvim',
    opts = {
        mappings = {
            basic = true,
            extra = false
        },
    },
    lazy = true,
    event = "BufWinEnter",
}

return comment
