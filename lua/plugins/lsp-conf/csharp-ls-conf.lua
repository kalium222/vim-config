-- csharp-ls

vim.lsp.enable('csharp_ls')
vim.lsp.config('csharp_ls', {
  cmd = {"/home/Kalium/.dotnet/tools/csharp-ls"},
  filetypes = {"cs"},
  init_options = {
    AutomaticWorkspaceInit = true,
  },
})

return {}
