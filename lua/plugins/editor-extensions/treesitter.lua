-- see https://github.com/nvim-treesitter/nvim-treesitter/tree/master
-- marster branch is frozen and provided for backward compatibility only

-- NOTE: main branch doesn't work for render-markdown.nvim plugin
local treesitter_main = {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        require('nvim-treesitter').install({
            'haskell', 'python',
        })
        --- for treesitter highlighting
        vim.api.nvim_create_autocmd('FileType', {
            pattern = { 'c', 'lua', 'python', 'haskell' },
            callback = function() vim.treesitter.start() end,
        })
    end,
}

local treesitter_master = {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    lazy = false,
    build = ":TSUpdate",
    -- WARN: ? opts doesn't work for render-markdown.nvim
    -- opts = {
    --     ensure_installed = { 'c', 'lua', 'python', 'haskell' },
    --     highlight = {
    --         enable = true,
    --     },
    -- },
    config = function()
        require('nvim-treesitter.configs').setup({
            ensure_installed = { 'c', 'lua', 'python', 'haskell' },
            highlight = { enable = true },
        })
    end
}

return treesitter_master
