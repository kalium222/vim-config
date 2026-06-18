local telescope = {
  'nvim-telescope/telescope.nvim',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  },
  opts = function()
    require('telescope').load_extension('fzf')
    return {
      defaults = {
        mappings = {
          n = {
            ["o"] = "select_default",
            ["v"] = "select_vertical",
            ["s"] = "select_horizontal",
            ["t"] = "select_tab",
          },
        },
      },
    }
  end,
}

return telescope
