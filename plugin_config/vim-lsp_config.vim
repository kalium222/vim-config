" Configuration for vim-lsp

" register clangd
if executable('clangd')
    au User lsp_setup call lsp#register_server({
    \ 'name': 'clangd',
    \ 'cmd': {server_info->['clangd', '-background-index']},
 	\ 'whitelist': ['c', 'cpp', 'objc', 'objcpp'],
    \ })
endif

" register pylsp
if executable('pylsp')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pylsp',
        \ 'cmd': {server_info->['pylsp']},
        \ 'allowlist': ['python'],
        \ })
endif

" register texlab
if executable(expand('/usr/bin/texlab'))
  autocmd User lsp_setup call lsp#register_server({
        \'name': 'texlab',
        \'cmd': {server_info->[expand('/usr/bin/texlab')]},
        \'whitelist': ['tex']
        \})
endif

" disable diagnostics support
let g:lsp_diagnostics_enabled = 0         

" enable sementic highlighting
let g:lsp_semantic_enabled = 1

