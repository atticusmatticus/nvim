"======================================="
"       persistent signature help       "
"======================================="
" exec 'luafile' expand(g:custom_path . 'lua/signature.lua')

"======================================="
"           vim-commentary              "
"======================================="
" Add comment character '#' for unsupported filetype
autocmd FileType json,ipynb setlocal commentstring=#\ %s
autocmd FileType c,cpp,cs,java setlocal commentstring=//\ %s


"======================================="
"               lualine                 "
"======================================="
" Dracula Color Settings: 'dracula-nvim', 'onelight', 'everforest', or 'solarized_light'
" if exists('g:vscode')

" else
lua << EOF
require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'dracula-nvim',
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
" endif

"======================================="
"              indentLine               "
"======================================="
let g:indentLine_char = '▏'
let g:indentLine_color_term = 237
let g:indentLine_fileTypeExclude = ['markdown', 'json']

" Do not conceal in JSON and Markdown
let g:vim_json_syntax_conceal = 0
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0

"======================================="
"          rainbow_parentheses          "
"======================================="
" rainbow_parentheses.vim always on
" au VimEnter * RainbowParenthesesToggle
" au Syntax * RainbowParenthesesLoadRound
" au Syntax * RainbowParenthesesLoadSquare
" au Syntax * RainbowParenthesesLoadBraces

"======================================="
"           nvim-treesitter             "
"======================================="
exec 'luafile' expand(g:custom_path . 'lua/nvim-treesitter.lua')
 
"======================================="
"            fzf / fzf.vim              "
"======================================="
" If installed using Homebrew
if g:uname == "Darwin"
    set rtp+=/opt/homebrew/opt/fzf
elseif g:uname == "Linux"
    set rtp+=/home/linuxbrew/.linuxbrew/opt/fzf
endif
" Customize fzf colors to match your color scheme
" - fzf#wrap translates this to a set of `--color` options
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

"======================================="
"           telescope.nvim              "
"======================================="
" exec 'luafile' expand(g:custom_path . 'lua/nvim-telescope.lua')
 
"======================================="
"              NERDtree                 "
"======================================="
" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
" open vim with nerdtree open
let NERDTreeShowHidden=1

"======================================="
"              CHADtree                 "
"======================================="
" let g:chadtree_settings =
"             \ {
"                 \ "view":
"                 \ {
"                     \ "width": 35
"                 \ },
"                 \ "theme":
"                 \ {
"                     \ "text_colour_set": "nerdtree_syntax_dark"
"                 \ }
"             \ }
" " Start NERDTree. If a file is specified, move the cursor to its window.
" " autocmd StdinReadPre * let s:std_in=1
" " autocmd VimEnter * CHADopen | if argc() > 0 || exists("s:std_in") | wincmd p | endif
" function s:chadOpen()
"     CHADopen
"     if argc() > 0 || exists("s:std_in")
"         wincmd p
"     endif
" endfunction

" autocmd VimEnter * call s:chadOpen()

" Start CHADtree automatically on launch
" autocmd VimEnter * CHADopen

"======================================="
"           nvim-lspconfig              "
"======================================="
exec 'luafile' expand(g:custom_path . 'lua/nvim-lspconfig.lua')

"======================================="
"              coq_nvim                 "
"======================================="
" launch :COQnow when nvim starts
let g:coq_settings = { 'auto_start': v:true } "| 'shut-up' }
" launch :COQnow when nvim starts without launch message
" let g:coq_settings = { 'auto_start': 'shut-up' }

"======================================="
"            nvim-compe                 "
"======================================="
" set completeopt=menu,menuone,noselect
" exec 'luafile' expand(g:custom_path . 'lua/nvim-compe.lua')

"======================================="
"            jupyter-vim                "
"======================================="
" Prevent default keybindings
" let g:jupyter_mapkeys = 0

"======================================="
"              suda.vim                 "
"======================================="
