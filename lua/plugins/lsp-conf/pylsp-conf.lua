-- pylsp

vim.lsp.enable('pylsp')
vim.lsp.config('pylsp', {
    settings = {
        pylsp = {
            plugins = {
                pycodestyle = {
                    -- ignore = {
                    --     'W391',
                    --     'W191',
                    --     'E302',
                    --     'E402', -- import not at top of the file
                    --     'E501', -- longer than 100 characters
                    -- },
                    -- maxLineLength = 100
                }
            }
        }
    }
})

return {}
