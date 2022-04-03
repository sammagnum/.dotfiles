" Remaps

" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>
" nnoremap <C-H> <C-W><C-H>

" set fillchars+=vert:\|
let g:mapleader="\<Space>"
tnoremap <ESC> <C-\><C-N>

inoremap jk <ESC>

" Options
set relativenumber number
set noswapfile
set bo=all
set sta et ts=2 sw=2 si
syntax on
set background=dark
set ruler
set mouse=a " set the value to c to disable
set hidden
set laststatus=2
set backspace=indent,eol,start


let g:vim_json_syntax_conceal = 0
set colorcolumn=80
set autoread
:set guioptions-=m "remove menu bar
:set guioptions-=T "remove toolbar
:set guioptions-=r "remove right-hand scroll bar
:set guioptions-=L "remove left-hand scroll bar
:set lines=999 columns=999

" Cut/Copy/Paste using the "standard" hotkeys 
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+

" " Copy to clipboard
" vnoremap  <leader>y  "+y
" nnoremap  <leader>Y  "+yg_
" nnoremap  <leader>y  "+y
" nnoremap  <leader>yy  "+yy

" " Paste from clipboard
" nnoremap <leader>p "+p
" nnoremap <leader>P "+P
" vnoremap <leader>p "+p
" vnoremap <leader>P "+P

" Plugins
call plug#begin()
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'flazz/vim-colorschemes'
Plug 'christoomey/vim-tmux-navigator'
Plug 'nvim-lua/plenary.nvim' 
Plug 'BurntSushi/ripgrep'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neovim/nvim-lspconfig'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-telescope/telescope.nvim'
" Plug 'glepnir/dashboard-nvim'
Plug 'goolord/alpha-nvim'
call plug#end()

lua << EOF

require'alpha'.setup(require'alpha.themes.startify'.opts)

EOF

colorscheme Atelier_LakesideDark

:lua require'lspconfig'.yamlls.setup{}

" Telescope
"
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>  
nnoremap <leader>fo <cmd>Telescope oldfiles<cr>  
nnoremap <leader>cc <cmd>Telescope colorscheme<cr>  
nnoremap <leader>fm <cmd>Telescope marks<cr>  


autocmd VimEnter * :sleep 20m
autocmd VimEnter * :silent exec "!kill -s SIGWINCH $PPID"


