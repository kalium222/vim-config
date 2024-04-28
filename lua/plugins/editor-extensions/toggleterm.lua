local toggleterm = {
    'akinsho/toggleterm.nvim',
    lazy = true,
    event = "VimEnter",
    opts = {
        open_mapping = [[<C- >]],
    },
}

return toggleterm

