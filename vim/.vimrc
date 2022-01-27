" Remaps

" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>
" nnoremap <C-H> <C-W><C-H>

tnoremap <ESC> <C-\><C-N>

inoremap jk <ESC>
cnoreabbrev so so ~/.vimrc

" Options
set relativenumber number
set noswapfile
set bo=all
set sta et ts=2 sw=2

" Plugins
call plug#begin()
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()
