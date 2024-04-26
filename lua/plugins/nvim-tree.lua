local function nvim_tree_conf(bufnr)
    local api = require "nvim-tree.api"

    local function opts(desc)
        return { desc = "nvim-tree: " .. desc,
            buffer = bufnr, noremap = true,
            silent = true, nowait = true
        }
    end

    -- default mappings
    api.config.mappings.default_on_attach(bufnr)

    -- custom mappings
    vim.keymap.del('n', '<Tab>', {buffer = bufnr})
    vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))
    vim.keymap.del('n', 'g?', {buffer = bufnr})
    vim.keymap.set('n', 'i', api.node.open.horizontal, opts('Open: Herizontal'))
    vim.keymap.set('n', 's', api.node.open.vertical, opts('Open: Vertical'))
    vim.keymap.set('n', 't', api.node.open.tab, opts('Open: Vertical'))

end

local nvim_tree = {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    dependencies = {"nvim-tree/nvim-web-devicons"},
    config = function ()
        require("nvim-tree").setup {
            on_attach = nvim_tree_conf
        }
    end
}

return nvim_tree

