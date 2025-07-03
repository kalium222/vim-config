local toggleterm = {
    'akinsho/toggleterm.nvim',
    lazy = true,
    event = "VeryLazy",
    opts = {
        size = function(term)
            if term.direction == "horizontal" then
                return vim.o.lines * 0.4
            elseif term.direction == "vertical" then
                return vim.o.columns * 0.4
            end
        end,
        open_mapping = [[<C-Space>]],
        on_open = function(_)
            vim.cmd [[wall]]
        end,
        shade_terminals = true,
        shading_factor = '30',
        float_opts = {
            border = 'curved'
        },
    },
}

return toggleterm
