local nvim_dashboard = {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    dependencies = { {'nvim-tree/nvim-web-devicons'} },
    config = function()
        vim.cmd[[
            hi clear DashBoardHeader
            hi clear DashBoardFooter
            hi link DashBoardHeader Constant
            hi link DashBoardFooter Title
        ]]
        require('dashboard').setup {
            theme = 'doom',
            disable_move = true, -- for hyper
            shortcut_type = 'number', -- for hyper
            -- hide = {
            --     statusline = true,
            --     tabline = true,
            --     winbar = true,
            -- },
            preview = {},
            config = {
                header = {
                    '',
                    '',
                    '',
                    '',
                    '',
                    '',
                    '',
                    '',
                    '',
                    '',
                    '',
                    '',
                    ' ⣇⣿⠘⣿⣿⣿⡿⡿⣟⣟⢟⢟⢝⠵⡝⣿⡿⢂⣼⣿⣷⣌⠩⡫⡻⣝⠹⢿⣿⣷ ',
                    ' ⡆⣿⣆⠱⣝⡵⣝⢅⠙⣿⢕⢕⢕⢕⢝⣥⢒⠅⣿⣿⣿⡿⣳⣌⠪⡪⣡⢑⢝⣇ ',
                    ' ⡆⣿⣿⣦⠹⣳⣳⣕⢅⠈⢗⢕⢕⢕⢕⢕⢈⢆⠟⠋⠉⠁⠉⠉⠁⠈⠼⢐⢕⢽ ',
                    ' ⡗⢰⣶⣶⣦⣝⢝⢕⢕⠅⡆⢕⢕⢕⢕⢕⣴⠏⣠⡶⠛⡉⡉⡛⢶⣦⡀⠐⣕⢕ ',
                    ' ⡝⡄⢻⢟⣿⣿⣷⣕⣕⣅⣿⣔⣕⣵⣵⣿⣿⢠⣿⢠⣮⡈⣌⠨⠅⠹⣷⡀⢱⢕ ',
                    ' ⡝⡵⠟⠈⢀⣀⣀⡀⠉⢿⣿⣿⣿⣿⣿⣿⣿⣼⣿⢈⡋⠴⢿⡟⣡⡇⣿⡇⡀⢕ ',
                    ' ⡝⠁⣠⣾⠟⡉⡉⡉⠻⣦⣻⣿⣿⣿⣿⣿⣿⣿⣿⣧⠸⣿⣦⣥⣿⡇⡿⣰⢗⢄ ',
                    ' ⠁⢰⣿⡏⣴⣌⠈⣌⠡⠈⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣬⣉⣉⣁⣄⢖⢕⢕⢕ ',
                    ' ⡀⢻⣿⡇⢙⠁⠴⢿⡟⣡⡆⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣵⣵⣿ ',
                    ' ⡻⣄⣻⣿⣌⠘⢿⣷⣥⣿⠇⣿⣿⣿⣿⣿⣿⠛⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ',
                    ' ⣷⢄⠻⣿⣟⠿⠦⠍⠉⣡⣾⣿⣿⣿⣿⣿⣿⢸⣿⣦⠙⣿⣿⣿⣿⣿⣿⣿⣿⠟ ',
                    ' ⡕⡑⣑⣈⣻⢗⢟⢞⢝⣻⣿⣿⣿⣿⣿⣿⣿⠸⣿⠿⠃⣿⣿⣿⣿⣿⣿⡿⠁⣠ ',
                    ' ⡝⡵⡈⢟⢕⢕⢕⢕⣵⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣿⣿⣿⣿⣿⠿⠋⣀⣈⠙ ',
                    ' ⡝⡵⡕⡀⠑⠳⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⢉⡠⡲⡫⡪⡪⡣ ',
                    '',
                    '',
                    '',
                }, --your header
                -- week_header = {
                --     enable = false,
                --     concat = "concat string!",
                --     append = {
                --         "append text1",
                --         "append text2",
                --     },
                -- },
                center = {
                    {
                      icon = ' ',
                      icon_hl = 'DiagnosticOk',
                      desc = 'Toggle Float Terminal From Lspsaga',
                      desc_hl = 'NonText',
                      key = 't',
                      keymap = '<Leader>:',
                      key_hl = 'Number',
                      key_format = ' %s', -- remove default surrounding `[]`
                      -- action = 'lua print("todo")'
                    },
                    {
                      icon = ' ',
                      icon_hl = 'Number',
                      desc = 'Find files with Telescope',
                      desc_hl = 'NonText',
                      key = 'f',
                      keymap = 'T:',
                      key_hl = 'Number',
                      key_format = ' %s', -- remove default surrounding `[]`
                      -- action = 'lua print("this is also todo")'
                    },
                    {
                      icon = '☯ ',
                      icon_hl = 'Title',
                      desc = 'Grep symbols with Telescope',
                      desc_hl = 'NonText',
                      key = 'g',
                      keymap = 'T:',
                      key_hl = 'Number',
                      key_format = ' %s', -- remove default surrounding `[]`
                      -- action = 'lua print("this is also todo")'
                    },
                    {
                      icon = '☸ ',
                      icon_hl = 'Error',
                      desc = 'Get help with Telescope',
                      desc_hl = 'NonText',
                      key = 'h',
                      keymap = 'T:',
                      key_hl = 'Number',
                      key_format = ' %s', -- remove default surrounding `[]`
                      -- action = 'lua print("this is also todo")'
                    },
                    {
                      icon = "◉ ",
                      icon_hl = 'Question',
                      desc = 'Toggle nvim-tree',
                      desc_hl = 'NonText',
                      key = '\\',
                      keymap = '<Leader>:',
                      key_hl = 'Number',
                      key_format = ' %s', -- remove default surrounding `[]`
                      action = ''
                    },
                    {
                      icon = '󰨞 ',
                      icon_hl = '@label',
                      desc = 'Open VScode!!!',
                      desc_hl = 'NonText',
                      key = 'v',
                      keymap = 'Press nothing but:',
                      key_hl = 'Number',
                      key_format = ' %s', -- remove default surrounding `[]`
                      action = 'lua vim.fn.system("code")'
                    },
                },
                footer = {"ᕕ(◠ڼ◠)ᕗ"},
            },
        }
    end
}

return nvim_dashboard

