local telescope = {
  'nvim-telescope/telescope.nvim',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  },
  opts = {
    defaults = {
      mappings = {
        n = {
          ["o"] = "select_default",
          ["s"] = "select_vertical",
          ["i"] = "select_horizontal",
          ["t"] = "select_tab",
        },
      },
    },
  },
  config = function()
    require('telescope').load_extension('fzf')
  end
}

return telescope
