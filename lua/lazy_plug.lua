-- Plugin Management

-- get lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- load plugins from lua/plugins
require('lazy').setup({
    spec = {
        {import = "plugins.theme"},
        {import = "plugins.editor-extensions"},
        {import = "plugins.git-integration"},
        {import = "plugins.lsp"},
        {import = "plugins.lsp-conf"},
    }
})

