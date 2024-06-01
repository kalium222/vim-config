local colorizer = {
    "norcalli/nvim-colorizer.lua",
    lazy = true,
    ft = { "css" },
    config = true,
    opts = {
        'css',
        css = {
            rgb_fn = true,
        },
    },
}

return colorizer

