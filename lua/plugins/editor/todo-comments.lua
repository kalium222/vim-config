local todocomment = {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  lazy = true,
  event = {
    "BufNewFile",
    "BufRead",
  },
  opts = {},
}

return todocomment
