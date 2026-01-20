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
    Plug 'nathanaelkane/vim-indent-guides'
    Plug 'Raimondi/delimitMate'


"======================================="
"      IDE (completion, debugging)      "
"======================================="
    " Plug 'ms-jpq/coq_nvim', {'branch': 'coq'} " fast nvim completion main 
    " Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'} " snippets


"======================================="
"           Workflow plugins            "
"======================================="
    Plug 'preservim/nerdtree'
    Plug 'tpope/vim-fugitive'
    Plug 'nvim-lua/plenary.nvim' " required for telescope
    Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }
    Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
    " Plug 'renerocksai/telekasten.nvim', {'commit': 'b4672ba'} " before link insertion bug
    Plug 'renerocksai/telekasten.nvim'
    " Plug 'atticusmatticus/telekasten.nvim' " my fork of telekasten with bugfixes


"======================================="
"    Experimental (testing plugins)     "
"======================================="
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'neovim/nvim-lspconfig' " LSP configurations for builtin LSP client
    Plug 'kassio/neoterm'
    " Plug 'mason-org/mason.nvim'
    " Plug 'mason-org/mason-lspconfig.nvim'

endif


call plug#end()
