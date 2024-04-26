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

-- require("lazy").setup({
--     {
--       "morhetz/gruvbox",
--       config = function ()
--         vim.g.grublox_italic = 1
--         vim.cmd"colorscheme gruvbox"
--         vim.opt.background = "dark"
--       end
--     },
--     {
--       "nvim-tree/nvim-tree.lua",
--       lazy = false,
--       dependencies = {"nvim-tree/nvim-web-devicons"},
--       config = function ()
--         require("nvim-tree").setup()
--       end
--     }
-- })

require('lazy').setup('plugins')

local function nvim_tree_conf(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc,
      buffer = bufnr,
      noremap = true,
      silent = true,
      nowait = true
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

end

-- pass to setup along with your other options
-- require("nvim-tree").setup {
--   ---
--   on_attach = nvim_tree_conf,
--   ---
-- }

