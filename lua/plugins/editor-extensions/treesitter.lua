local treesitter = {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function ()
        require('nvim-treesitter').install({
            'haskell', 'python',
        })
        vim.api.nvim_create_autocmd('FileType', {
          pattern = { 'c', 'lua', 'python', 'haskell' },
          callback = function() vim.treesitter.start() end,
        })
    end
}

return treesitter
