" Configuration for vim-lsp

" register clangd
	if executable('clangd')
    au User lsp_setup call lsp#register_server({
      \ 'name': 'clangd',
      \ 'cmd': {server_info->['clangd', '-background-index']},
 	    \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp'],
      \ })
	endif

" disable diagnostics support
let g:lsp_diagnostics_enabled = 0         

