" ===== vim-plug start =====
call plug#begin('~/.vim/plugged')

Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()
" ===== vim-plug end =====

filetype plugin indent on
syntax on
set t_Co=256
set termguicolors
colorscheme dracula

" Show line numbers
set number

" Show file stats
set ruler

" Encoding
set encoding=utf-8