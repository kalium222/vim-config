-- nixd
-- vim.lsp.config('nixd', {
--     settings = {
--         nixd = {
--             nixpkgs = {
--                 expr = "import <nixpkgs> { }",
--             },
--             formatting = {
--                 command = { "nixfmt" },
--             },
--         },
--     },
-- })
-- vim.lsp.enable('nixd')

-- nil
vim.lsp.enable('nil_ls')
return {}
