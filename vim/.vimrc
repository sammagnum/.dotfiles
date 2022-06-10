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
set undofile
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
Plug 'rcarriga/nvim-notify'
call plug#end()

set ts=2 sts=2 sw=2 si expandtab

tnoremap jk  <C-\><C-n>

lua require('lspconfig').sumneko_lua.setup{}
lua require('lspconfig').pyright.setup{}
lua require('lspconfig').rust_analyzer.setup{}
lua require('lspconfig').bashls.setup{}

colorscheme nord

lua << EOF
vim.lsp.handlers['window/showMessage'] = function(_, result, ctx)
  local client = vim.lsp.get_client_by_id(ctx.client_id)
  local lvl = ({ 'ERROR', 'WARN', 'INFO', 'DEBUG' })[result.type]
  notify({ result.message }, lvl, {
    title = 'LSP | ' .. client.name,
    timeout = 10000,
    keep = function()
      return lvl == 'ERROR' or lvl == 'WARN'
    end,
  })
end
EOF
