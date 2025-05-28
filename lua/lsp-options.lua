-- customize the diagnose symbols
-- vim.fn.sign_define {
--     {
--         name = "DiagnosticSignError",
--         dict = {
--             text = "😰",
--             texthl = "😰",
--             -- linehl =,
--             -- numhl =,
--         },
--     },
--     {
--         name = "DiagnosticSignWarn",
--         dict = {
--             text = "😅",
--             texthl = "😅",
--             -- linehl =,
--             -- numhl =,
--         },
--     },
--     {
--         name = "DiagnosticSignInfo",
--         dict = {
--             text = "🤗",
--             texthl = "🤗",
--             -- linehl =,
--             -- numhl =,
--         },
--     },
--     {
--         name = "DiagnosticSignHint",
--         dict = {
--             text = "🤨",
--             texthl = "🤨",
--             -- linehl =,
--             -- numhl =,
--         },
--     }
-- }

-- diagnose sign
vim.cmd[[
    sign define DiagnosticSignError text=😰 texthl=DiagnosticSignError linehl= numhl=
    sign define DiagnosticSignWarn text=😅 texthl=DiagnosticSignWarn linehl= numhl=
    sign define DiagnosticSignInfo text=🤗 texthl=DiagnosticSignInfo linehl= numhl=
    sign define DiagnosticSignHint text=🤨 texthl=DiagnosticSignHint linehl= numhl=
]]

vim.cmd[[highlight @variable.python guifg=#AAAAAA]]
vim.cmd[[highlight cConditional guifg=#FF8800]]
vim.lsp.inlay_hint.enable(true, nil)
