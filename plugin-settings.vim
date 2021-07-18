"======================================="
"           vim-commentary              "
"======================================="
" Add comment character '#' for unsupported filetype
" autocmd FileType apache setlocal commentstring=#\ %s

"======================================="
"               lualine                 "
"======================================="
" Dracula Color Settings: 'dracula-nvim' or 'papercolor_light'
lua << EOF
require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'solarized_light',
        component_separators = {'', ''},
        section_separators = {'', ''},
        disabled_filetypes = {}
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch'},
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    extensions = {'fugitive', 'nerdtree'}
}
EOF
" let g:lightline = {
"       \ 'colorscheme': 'dracula_pro',
"       \ 'active': {
"       \   'left': [ [ 'mode', 'paste' ],
"       \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
"       \ },
"       \ 'inactive': {
"       \   'left': [ [ 'mode', 'paste' ],
"       \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
"       \ },
"       \ 'component_function': {
"       \   'gitbranch': 'FugitiveHead'
"       \ },
"       \ }

" OneHalfLight Color Settings
" let g:lightline = {
"       \ 'colorscheme': 'PaperColor',
"       \ 'active': {
"       \   'left': [ [ 'mode', 'paste' ],
"       \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
"       \ },
"       \ 'inactive': {
"       \   'left': [ [ 'mode', 'paste' ],
"       \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
"       \ },
"       \ 'component_function': {
"       \   'gitbranch': 'FugitiveHead'
"       \ },
"       \ }

"======================================="
"              indentLine               "
"======================================="
let g:indentLine_char = '▏'
let g:indentLine_color_term = 237
let g:indentLine_fileTypeExclude = ['markdown']

"======================================="
"          rainbow_parentheses          "
"======================================="
" rainbow_parentheses.vim always on
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"======================================="
"           nvim-treesitter             "
"======================================="
exec 'luafile' expand(g:custom_path . 'lua/nvim-treesitter.lua')
 
"======================================="
"            fzf / fzf.vim              "
"======================================="
" Colors, other customizations?

"======================================="
"           telescope.nvim              "
"======================================="
" exec 'luafile' expand(g:custom_path . 'lua/nvim-telescope.lua')
 
"======================================="
"              nerdtree                 "
"======================================="
" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
" open vim with nerdtree open
" autocmd VimEnter * NERDTreeVCS
let NERDTreeShowHidden=1

"======================================="
"           nvim-lspconfig              "
"======================================="
exec 'luafile' expand(g:custom_path . 'lua/nvim-lspconfig.lua')

"======================================="
"            nvim-compe                 "
"======================================="
set completeopt=menu,menuone,noselect
exec 'luafile' expand(g:custom_path . 'lua/nvim-compe.lua')

"======================================="
"            jupyter-vim                "
"======================================="
" Prevent default keybindings
let g:jupyter_mapkeys = 0

