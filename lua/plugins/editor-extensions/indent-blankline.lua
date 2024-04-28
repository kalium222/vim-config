local indent_line = {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
    event = {
        "BufNewFile",
        "BufRead",
    }
}

return indent_line

