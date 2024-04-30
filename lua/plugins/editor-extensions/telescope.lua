local telescope = {
    'nvim-telescope/telescope.nvim',
    event = "VeryLazy",
    dependencies = {
        'nvim-lua/plenary.nvim',
        "nvim-treesitter/nvim-treesitter",
    },
    config = function ()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', 'Tf', builtin.find_files, opts)
        vim.keymap.set('n', 'Tg', builtin.live_grep, opts)
        vim.keymap.set('n', 'Tb', builtin.buffers, opts)
        vim.keymap.set('n', 'Th', builtin.help_tags, opts)
    end
}

return telescope

