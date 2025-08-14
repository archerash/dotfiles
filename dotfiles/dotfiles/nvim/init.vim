call plug#begin('~/.config/nvim/plugged')

Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'windwp/nvim-autopairs'
Plug 'windwp/nvim-ts-autotag'

Plug 'tanvirtin/monokai.nvim'

call plug#end()

lua require('nvim-tree-config')
nnoremap \e :NvimTreeToggle<CR>

lua require('autotag-config')

" --- General Settings ---
set number
" set relativenumber
set clipboard=unnamedplus
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent

autocmd FileType * setlocal formatoptions+=c

" --- Custom Mappings ---
nnoremap W :m .-2<CR>==
nnoremap S :m .+1<CR>==
vnoremap W :m '<-2<CR>gv=gv
vnoremap S :m '>+1<CR>gv=gv

" --- Color and UI Settings ---
colorscheme monokai
"if has('termguicolors')
"    set termguicolors
"endif
"set background=dark
"highlight Normal ctermbg=none guibg=none


