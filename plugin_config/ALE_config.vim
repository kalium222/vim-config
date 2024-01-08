" Configuration for ALE

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1

let g:ale_disable_lsp=1

" Set linter from vim-lsp
let g:ale_linters = {
\		'cpp': ['vim-lsp'],
\	}

let g:ale_sign_error = '!!'
let g:ale_sign_warning = '??'

