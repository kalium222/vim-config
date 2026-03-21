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
  main = 'nvim-treesitter.configs',
  opts = {
    ensure_installed = {
      'cpp',
      'python',
      'haskell',
      'c_sharp',
      'gdscript'
    },
    highlight = {
      enable = true,
    },
  },
}

return treesitter_master
