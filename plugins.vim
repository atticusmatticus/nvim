call plug#begin()


"======================================="
"     Movement & editation plugins      "
"======================================="
if exists('g:vscode')

else
    Plug 'mbbill/undotree'
    " Plug 'ctrlpvim/ctrlp.vim' " File finder
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    " Plug 'jiangmiao/auto-pairs' " Matching parens, quotes etc.
    " Plug 'cohama/lexima.vim' " Matching parens, quotes etc.
    Plug 'lambdalisue/suda.vim' " read or write files with `sudo` command

    Plug 'tpope/vim-commentary' " gcc -> Normal, gc -> Visual

endif

Plug 'tpope/vim-surround' " (o_o) -> cs([ -> [o_o]


"======================================="
"               UI plugins              "
"======================================="
if exists('g:vscode')

else
    Plug 'Mofiqul/dracula.nvim' " for dracula lualine theme
    Plug 'projekt0n/github-nvim-theme'
    Plug 'rakr/vim-one'
    Plug 'hoob3rt/lualine.nvim' " lightline replacement
    Plug 'kyazdani42/nvim-web-devicons' " icons for lualine
    " Plug 'kien/rainbow_parentheses.vim'
    " Plug 'Yggdroot/indentLine'
    Plug 'nathanaelkane/vim-indent-guides'
    Plug 'Raimondi/delimitMate'
    " Plug 'morhetz/gruvbox'
    " Plug 'glepnir/lspsaga.nvim'
    Plug 'sonph/onehalf', {'rtp': 'vim/'}
    Plug 'NLKNguyen/papercolor-theme'
    Plug 'sainnhe/everforest'


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
" Plug 'jupyter-vim/jupyter-vim' " run jupyter notebooks in nvim


"======================================="
"    Experimental (testing plugins)     "
"======================================="
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
    Plug 'neovim/nvim-lspconfig' " LSP configurations for builtin LSP client
    " Plug 'hrsh7th/nvim-compe' " LSP Completion
    Plug 'ms-jpq/coq_nvim', {'branch': 'coq'} " fast nvim completion main 
    Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'} " snippets
    " Plug 'RishabhRD/popfix'
    " Plug 'RishabhRD/nvim-lsputils' " Enhance built in LSP functions
    Plug 'kassio/neoterm'
endif


call plug#end()
