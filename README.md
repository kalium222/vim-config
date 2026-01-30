# NeoVim Now!
Quit vim. Move to Neovim now, with [lazy.nvim](https://github.com/folke/lazy.nvim)
as plugin manager.
# Structure
`init.lua` will imports the modules in `/lua`.
And other plugins in `/lua/plugins` will be managed by [lazy](...) in `/lua/lazy_plug.lua`.
The file names of all the configuration files should be well-named,
and put in the also well-named directories.
# Lsp
Nvim supports lsp natively.
And there are many default config in `lspconfig.nvim` plugin. Just use it.
| language | lsp |
| --- | --- |
| c/cpp | clangd |
| python | pyright & ruff |
| lua | lua_ls |
| csharp | roslyn_ls |
| go | gopls |
| haskell | hls |
| rust | rust-analyzer |
| shell | sh_lsp |
| latex | texlab |
| java | jdtls |
