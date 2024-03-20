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
set expandtab
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

set clipboard=unnamedplus

" }}}


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

  " markdown
  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
  source ~/.vim/plugin_config/mark_pre_config.vim

  " editing
  Plug 'tpope/vim-surround'
  Plug 'jiangmiao/auto-pairs'
  Plug 'preservim/nerdcommenter'

  " lsp support and functionality
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  source ~/.vim/plugin_config/coc.vim
  Plug 'dense-analysis/ale'
  source ~/.vim/plugin_config/ALE_config.vim

  call plug#end()
   
" }}}


" THEMES -------------------------------------------------------------------- {{{

let g:gruvbox_italic=1
colo gruvbox
set background=dark

" }}}


" KEYMAPPING -------------------------------------- {{{

  let mapleader = "\<Tab>"

  " TODO: not good
  nnoremap <leader>t :wall \| :term ++rows=15<CR>
  nnoremap <leader>T :wall \| :vert ter<CR>
  nnoremap <leader>V :vs $MYVIMRC<CR>
  nnoremap <leader>h  <C-W>h \| :wall<CR>
  nnoremap <leader>j  <C-W>j \| :wall<CR>
  nnoremap <leader>k  <C-W>k \| :wall<CR>
  nnoremap <leader>l  <C-W>l \| :wall<CR>

  nnoremap <leader>n :NERDTree<CR>
  nnoremap <leader>R :NERDTreeRefreshRoot<CR>

  " TODO: not good
  nnoremap <leader>p :MarkdownPreview<CR>
  nnoremap <leader>P :MarkdownPreviewStop<CR>
  
" }}}

