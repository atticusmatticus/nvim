call plug#begin()

"======================================="
"     Movement & editation plugins      "
"======================================="
Plug 'mbbill/undotree'
" Plug 'ctrlpvim/ctrlp.vim' " File finder
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround' " (o_o) -> cs([ -> [o_o]
Plug 'tpope/vim-commentary' " gcc -> Normal, gc -> Visual
Plug 'jiangmiao/auto-pairs' " Matching parens, quotes etc.

"======================================="
"               UI plugins              "
"======================================="
Plug 'itchyny/lightline.vim' " Nice bar
" Plug 'luochen1990/rainbow'
" Plug 'junegunn/rainbow_parentheses.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'Yggdroot/indentLine'
Plug 'nvim-treesitter/nvim-treesitter', {'commit': '3c07232', 'do': ':TSUpdate'}  " We recommend updating the parsers on update
" Plug 'nvim-treesitter/playground'
" Plug 'aonemd/kuroi.vim'
" Plug 'morhetz/gruvbox'
" Plug 'jupyter-vim/jupyter-vim'

"======================================="
"      IDE (completion, debugging)      "
"======================================="
" Plug 'hrsh7th/vim-vsnip'
" Plug 'hrsh7th/vim-vsnip-integ'
" Plug 'puremourning/vimspector'
" Plug 'plytophogy/vim-virtualenv' " Virtual env
" Plug 'airblade/vim-rooter'

"======================================="
"           Workflow plugins            "
"======================================="
Plug 'preservim/nerdtree'
" Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
Plug 'nvim-lua/popup.nvim'      " telescope dependency
Plug 'nvim-lua/plenary.nvim'    " telescope dependency
Plug 'nvim-telescope/telescope.nvim'
" Plug 'vimwiki/vimwiki'
" Plug 'blindFS/vim-taskwarrior' " Task management
" Plug 'tools-life/taskwiki'
" Plug 'tpope/vim-fugitive'

"======================================="
"    Experimental (testing plugins)     "
"======================================="
Plug 'neovim/nvim-lspconfig' " LSP configurations for builtin LSP client
Plug 'hrsh7th/nvim-compe' " LSP Completion
" Plug 'RishabhRD/popfix'
" Plug 'RishabhRD/nvim-lsputils' " Enhance built in LSP functions

call plug#end()
