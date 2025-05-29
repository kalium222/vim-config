-- local gruvbox = {
--     "morhetz/gruvbox",
--     config = function ()
--         vim.g.gruvbox_italic = 1
--         vim.opt.background = "dark"
--         vim.cmd"colorscheme gruvbox"
--     end
-- }

local baby = {
    "luisiacc/gruvbox-baby",
    config = function ()
        vim.g.gruvbox_baby_function_style = "NONE"
        vim.g.gruvbox_baby_keyword_style = "italic"
        vim.g.gruvbox_baby_telescope_theme = 1
        -- vim.g.gruvbox_baby_transparent_mode = 1
        vim.cmd[[colorscheme gruvbox-baby]]
    end
}

-- local material = {
--     "sainnhe/gruvbox-material",
--     config = function ()
--         vim.opt.background = "dark"
--         vim.cmd"colorscheme gruvbox-material"
--     end
-- }

-- local tokyonight = {
--     "folke/tokyonight.nvim",
--     config = function ()
--         vim.cmd[[colorscheme tokyonight-night]]
--     end
-- }

-- local sonokai = {
--     "sainnhe/sonokai",
--     config = function ()
--         vim.g.sonokai_style = 'andromeda'
--         vim.g.sonokai_better_performance = 1
--         vim.cmd[[colorscheme sonokai]]
--     end
-- }

return baby

