-- qmlls
-- on arch, qmlls is packaged in qt6-declarative
-- as binary qmlls6.
-- see `pacman -Ql qt6-declarative`
vim.lsp.config('qmlls', {
  cmd = {'qmlls6'}
})
vim.lsp.enable('qmlls')

return {}
