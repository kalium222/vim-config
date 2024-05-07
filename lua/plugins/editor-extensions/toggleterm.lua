local toggleterm = {
    'akinsho/toggleterm.nvim',
    lazy = true,
    event = "VeryLazy",
    opts = {
        size = 25,
        open_mapping = [[<C- >]],
        on_open = function (t)
            vim.cmd[[wall]]
        end;
        shade_terminals = true,
        shading_factor = '30',
    },
}

return toggleterm

