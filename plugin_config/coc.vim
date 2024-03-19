" vim conf for coc

" use tab and shift-tab to move
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"

" use enter to confirm
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

