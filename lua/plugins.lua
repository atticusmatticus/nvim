return {
    {
        'mbbill/undotree'
    },
-- Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
-- Plug 'junegunn/fzf.vim'
-- " Plug 'lambdalisue/suda.vim' " read or write files with `sudo` command 

    {
        'tpope/vim-commentary' -- gcc -> Normal, gc -> Visual
    },
    {
        'tpope/vim-surround' -- (o_o) -> cs([ -> [o_o] ; ys{motion}{character}
    },

    {
        'Mofiqul/dracula.nvim' -- for dracula lualine theme
    },
    {
        'hoob3rt/lualine.nvim' -- lightline replacement
    },
    {
        'kyazdani42/nvim-web-devicons' -- icons for lualine
    },
    {
        'nathanaelkane/vim-indent-guides'
    },
    {
        'Raimondi/delimitMate'
    },


-- "======================================="
-- "           Workflow plugins            "
-- "======================================="
    {
        'preservim/nerdtree'
    },
    {
        'tpope/vim-fugitive'
    },
-- Plug 'nvim-lua/plenary.nvim' " required for telescope
-- Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }
-- Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
    {
        'nvim-telescope/telescope.nvim', version = '*',
        dependencies = {
            'nvim-lua/plenary.nvim',
            -- optional but recommended
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        }
    },


-- " Plug 'renerocksai/telekasten.nvim', {'commit': 'b4672ba'} " before link insertion bug
    {
        'renerocksai/telekasten.nvim'
    },
-- " Plug 'atticusmatticus/telekasten.nvim' " my fork of telekasten with bugfixes


-- "======================================="
-- "    Experimental (testing plugins)     "
-- "======================================="
    {
        'nvim-treesitter/nvim-treesitter',
        lazy = false,
        build = ':TSUpdate'
    },
    {
        'neovim/nvim-lspconfig',
    },
    {
        'saghen/blink.cmp',
        -- optional: provides snippets for the snippet source
        dependencies = { 'rafamadriz/friendly-snippets' },

        -- use a release tag to download pre-built binaries
        version = '1.*',
        -- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
        -- build = 'cargo build --release',
        -- If you use nix, you can build from source using latest nightly rust with:
        -- build = 'nix run .#build-plugin',

        ---@module 'blink.cmp'
        ---@type blink.cmp.Config
        opts = {
        -- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
        -- 'super-tab' for mappings similar to vscode (tab to accept)
        -- 'enter' for enter to accept
        -- 'none' for no mappings
        --
        -- All presets have the following mappings:
        -- C-space: Open menu or open docs if already open
        -- C-n/C-p or Up/Down: Select next/previous item
        -- C-e: Hide menu
        -- C-k: Toggle signature help (if signature.enabled = true)
        --
        -- See :h blink-cmp-config-keymap for defining your own keymap
        keymap = {
            preset = 'enter',
            ['<C-k>'] = { 'select_prev', 'fallback' },
            ['<C-j>'] = { 'select_next', 'fallback' },
        },

        appearance = {
          -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
          -- Adjusts spacing to ensure icons are aligned
          nerd_font_variant = 'mono'
        },

        -- (Default) Only show the documentation popup when manually triggered
        completion = { documentation = { auto_show = false } },

        -- Default list of enabled providers defined so that you can extend it
        -- elsewhere in your config, without redefining it, due to `opts_extend`
        sources = {
          default = { 'lsp', 'path', 'snippets', 'buffer' },
        },

        -- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
        -- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
        -- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
        --
        -- See the fuzzy documentation for more information
        fuzzy = { implementation = "prefer_rust_with_warning" }
        },
        opts_extend = { "sources.default" }
    },
-- Plug 'kassio/neoterm'
}
