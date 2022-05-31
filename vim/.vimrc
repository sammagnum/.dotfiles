" Remaps

" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>
" nnoremap <C-H> <C-W><C-H>

tnoremap <ESC> <C-\><C-N>

inoremap jk <ESC>
cnoreabbrev so so ~/.vimrc

let mapleader=" "
" Options
set hidden
set relativenumber number
set noswapfile
set bo=all
set hlsearch
set incsearch

" Plugins
call plug#begin()
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'christoomey/vim-tmux-navigator'
Plug 'haya14busa/incsearch.vim'
Plug 'noahfrederick/vim-noctu'
Plug 'Yggdroot/indentLine'
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'shaunsingh/nord.nvim'
Plug 'neovim/nvim-lspconfig'
call plug#end()

set ts=2 sts=2 sw=2 si expandtab

lua require('lspconfig').sumneko_lua.setup{}
lua require('lspconfig').pyright.setup{}
