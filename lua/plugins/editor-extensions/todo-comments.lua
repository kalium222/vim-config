local todo = {
  "folke/todo-comments.nvim",
  event = {
      "BufNewFile",
      "BufRead",
  },
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
}

return todo

