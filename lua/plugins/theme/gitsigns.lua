local gitsigns = {
  'lewis6991/gitsigns.nvim',
  lazy = true,
  event = {
    "BufNewFile",
    "BufRead",
  },
  cmd = { "Gitsigns *" },
}

return gitsigns
