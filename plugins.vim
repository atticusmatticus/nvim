call plug#begin()


"======================================="
"     Movement & Editing plugins      "
"======================================="
if exists('g:vscode')

else
    Plug 'mbbill/undotree'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    " Plug 'lambdalisue/suda.vim' " read or write files with `sudo` command 

    Plug 'tpope/vim-commentary' " gcc -> Normal, gc -> Visual

endif

Plug 'tpope/vim-surround' " (o_o) -> cs([ -> [o_o] ; ys{motion}{character}


"======================================="
"               UI plugins              "
"======================================="
if exists('g:vscode')

else
    Plug 'Mofiqul/dracula.nvim' " for dracula lualine theme
    Plug 'hoob3rt/lualine.nvim' " lightline replacement
    Plug 'kyazdani42/nvim-web-devicons' " icons for lualine
    " Plug 'kien/rainbow_parentheses.vim'
    " Plug 'Yggdroot/indentLine'
    Plug 'nathanaelkane/vim-indent-guides'
    Plug 'Raimondi/delimitMate'
    " Plug 'NLKNguyen/papercolor-theme'
    " Plug 'sainnhe/everforest'


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
    Plug 'tpope/vim-fugitive'
    " Plug 'jupyter-vim/jupyter-vim' " run jupyter notebooks in nvim
    Plug 'nvim-lua/plenary.nvim' " required for telescope
    Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }
    Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
    Plug 'renerocksai/telekasten.nvim'


"======================================="
"    Experimental (testing plugins)     "
"======================================="
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
    Plug 'neovim/nvim-lspconfig' " LSP configurations for builtin LSP client
    Plug 'ms-jpq/coq_nvim', {'branch': 'coq'} " fast nvim completion main 
    Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'} " snippets
    " Plug 'RishabhRD/popfix'
    " Plug 'RishabhRD/nvim-lsputils' " Enhance built in LSP functions
    Plug 'kassio/neoterm'

endif


call plug#end()
