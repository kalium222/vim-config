" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2019 Dec 17
"
"	Modified by kalium for customization


" When started as "evim", evim.vim will already have done these settings, bail
" out.
if v:progname =~? "evim"
  finish
endif

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
  au!

" For all text files set 'textwidth' to 78 characters.
" autocmd FileType text setlocal textwidth=78
" augroup END

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END


" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')

	" filesystem tree
  Plug 'preservim/nerdtree'
	source ~/.vim/plugin_config/NERDTree_config.vim

	" themes
  Plug 'ayu-theme/ayu-vim'
  Plug 'vim-airline/vim-airline'

	" editing
	Plug 'tpope/vim-surround'
	Plug 'jiangmiao/auto-pairs'

	" lsp support and functionality
	Plug 'dense-analysis/ale'

	Plug 'prabirshrestha/async.vim'
	Plug 'prabirshrestha/vim-lsp'	
	source ~/.vim/plugin_config/vim-lsp_config.vim
	Plug 'prabirshrestha/asyncomplete.vim'
	Plug 'prabirshrestha/asyncomplete-lsp.vim'
	Plug 'hrsh7th/vim-vsnip'
	Plug 'hrsh7th/vim-vsnip-integ'

	call plug#end()

" }}}


" BASICS ---------------------------------------------------------------- {{{

set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on

" Do not save backup files.
set nobackup

set number
set shiftwidth=2
set tabstop=2
set noexpandtab
set cursorline
set cursorcolumn

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

set incsearch
set ignorecase
set smartcase
set showmatch
set hlsearch

set showcmd
set showmode
set ruler

set history=100

" }}}


" THEMES -------------------------------------------------------------------- {{{

set termguicolors
let ayucolor="dark"
colo ayu

" }}}


" KEYMAPPING -------------------------------------- {{{

	nnoremap <C-t> :NERDTree<CR>
	inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
	inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
	inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

" }}}

