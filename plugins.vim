call plug#begin()

"======================================="
"     Movement & editation plugins      "
"======================================="
Plug 'mbbill/undotree'
" Plug 'ctrlpvim/ctrlp.vim' " File finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround' " (o_o) -> cs([ -> [o_o]
Plug 'tpope/vim-commentary' " gcc -> Normal, gc -> Visual
" Plug 'jiangmiao/auto-pairs' " Matching parens, quotes etc.
Plug 'cohama/lexima.vim' " Matching parens, quotes etc.
Plug 'lambdalisue/suda.vim' " read or write files with `sudo` command


"======================================="
"               UI plugins              "
"======================================="
Plug 'Mofiqul/dracula.nvim' " for dracula lualine theme
Plug 'projekt0n/github-nvim-theme'
Plug 'hoob3rt/lualine.nvim' " lightline replacement
Plug 'kyazdani42/nvim-web-devicons' " icons for lualine
" Plug 'kien/rainbow_parentheses.vim'
Plug 'Yggdroot/indentLine'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
" Plug 'morhetz/gruvbox'
Plug 'glepnir/lspsaga.nvim'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'NLKNguyen/papercolor-theme'


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
" Plug 'vimwiki/vimwiki'
" Plug 'blindFS/vim-taskwarrior' " Task management
" Plug 'tools-life/taskwiki'
Plug 'tpope/vim-fugitive'
Plug 'jupyter-vim/jupyter-vim' " run jupyter notebooks in nvim

"======================================="
"    Experimental (testing plugins)     "
"======================================="
if has('nvim')
Plug 'neovim/nvim-lspconfig' " LSP configurations for builtin LSP client
Plug 'hrsh7th/nvim-compe' " LSP Completion
" Plug 'RishabhRD/popfix'
" Plug 'RishabhRD/nvim-lsputils' " Enhance built in LSP functions
elseif exists('g:vscode')
endif

call plug#end()
