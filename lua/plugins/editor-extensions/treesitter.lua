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
      pattern = { 'c', 'lua', 'python', 'haskell', 'qmljs' },
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
      'gdscript',
      'qmljs'
    },
    highlight = {
      enable = true,
    },
  },
}

local treesitter_manager = {
  "romus204/tree-sitter-manager.nvim",
  opts = {
    -- Default Options
    ensure_installed = {
      'cpp',
      'lua',
      'haskell',
      'c_sharp',
      'gdscript',
      'qmljs',
      'ruby',
    },        -- list of parsers to install at the start of a neovim session
    border = nil,         -- border style for the window (e.g. "rounded", "single"), if nil, use the default border style defined by 'vim.o.winborder'. See :h 'winborder' for more info.
    auto_install = false, -- if enabled, install missing parsers when editing a new file
    highlight = true,     -- treesitter highlighting is enabled by default
    -- languages = {}, -- override or add new parser sources
    -- parser_dir = vim.fn.stdpath("data") .. "/site/parser",
    -- query_dir = vim.fn.stdpath("data") .. "/site/queries",
  }
}

-- return treesitter_master
return treesitter_manager
