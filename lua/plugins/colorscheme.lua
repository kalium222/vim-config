local colorscheme = {
    "morhetz/gruvbox",
    config = function ()
        vim.g.gruvbox_italic = 1
        vim.cmd"colorscheme gruvbox"
        vim.opt.background = "dark"
    end
}

return colorscheme

