local comment = {
    'numToStr/Comment.nvim',
    lazy = true,
    event = {
        "BufNewFile",
        "BufRead",
    },
    opts = {
        mappings = {
            basic = true,
            extra = false
        },
    },
}

return comment

