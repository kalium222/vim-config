" An example for a vimrc file.
"
" Maintainer:  Bram Moolenaar <Bram@vim.org>
" Last change:  2019 Dec 17
"
"  Modified by kalium for customization


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
  Plug 'morhetz/gruvbox'
  Plug 'vim-airline/vim-airline'
  source ~/.vim/plugin_config/airline_config.vim

  " git
  Plug 'airblade/vim-gitgutter'
  source ~/.vim/plugin_config/gitgutter_config.vim

  " editing
  Plug 'tpope/vim-surround'
  Plug 'jiangmiao/auto-pairs'
  Plug 'preservim/nerdcommenter'

  " lsp support and functionality
  Plug 'prabirshrestha/async.vim'
  Plug 'prabirshrestha/vim-lsp'  
  source ~/.vim/plugin_config/vim-lsp_config.vim
  Plug 'prabirshrestha/asyncomplete.vim'
  Plug 'prabirshrestha/asyncomplete-lsp.vim'
  Plug 'hrsh7th/vim-vsnip'
  Plug 'hrsh7th/vim-vsnip-integ'

  Plug 'dense-analysis/ale'
  Plug 'rhysd/vim-lsp-ale'
  source ~/.vim/plugin_config/ALE_config.vim

call plug#end()
   
" }}}


" BASICS ---------------------------------------------------------------- {{{

set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on

set nobackup
set noswapfile

set number
set shiftwidth=4
set tabstop=4
set noexpandtab
set cursorline
" set cursorcolumn

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

let g:gruvbox_italic=1
colo gruvbox

" }}}


" KEYMAPPING -------------------------------------- {{{

  let mapleader = "\<Tab>"

  nnoremap <leader>t :wall \| :term ++rows=10<CR>
  nnoremap <leader>T :wall \| :vert ter<CR>
  nnoremap <leader>V :vs $MYVIMRC<CR>
  nnoremap <leader>h :wall<CR> \| <C-W>h
  nnoremap <leader>j :wall<CR> \| <C-W>j
  nnoremap <leader>k :wall<CR> \| <C-W>k
  nnoremap <leader>l :wall<CR> \| <C-W>l

  nnoremap <leader>d :LspDefinition<CR>
  nnoremap <leader>D :LspDeclaration<CR>
  nnoremap <leader>H :LspHover<CR>
  nnoremap <leader>r :LspReference<CR>

  nnoremap <leader>n :NERDTree<CR>
  nnoremap <leader>R :NERDTreeRefreshRoot<CR>
  
  inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
  inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
  inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

" }}}

