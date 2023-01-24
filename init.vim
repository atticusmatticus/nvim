set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

" Define path nvimrc path and function to load files
let g:custom_path = '~/.config/nvim/'
func LoadConfig(name)
    exec 'source' g:custom_path . a:name . '.vim'
endfunc


let g:uname = system("uname -s")


if exists('g:vscode')
    " set termguicolors

    call LoadConfig('plugins')
    call LoadConfig('base')
    call LoadConfig('plugin-settings')
    call LoadConfig('keymap')

else
    "" Dracula Color Settings
    let g:dracula_colorterm = 0
    set termguicolors
    colorscheme dracula_pro
    set background=dark

    call LoadConfig('plugins')
    call LoadConfig('base')
    call LoadConfig('plugin-settings')
    call LoadConfig('keymap')

    "" Everforest
    " if has('termguicolors')
    "     set termguicolors
    " endif
    " " For dark version.
    " " set background=dark
    " " For light version.
    " set background=light
    " " Set contrast. This configuration option should be placed before `colorscheme everforest`.
    " " Available values: 'hard', 'medium'(default), 'soft'
    " let g:everforest_background = 'medium'
    " " For better performance
    " let g:everforest_better_performance = 1
    " colorscheme everforest

    "" One Color Settings
    " set termguicolors
    " colorscheme one
    " set background=light " light version
    " let g:one_allow_italics = 1

    "" GitHub Light Color Settings
    " lua << EOF
    " require('github-theme').setup({
    "     theme_style         = 'light',
    "     comment_style       = 'italic',
    "     function_style      = 'italic',
    "     sidebars            = {'qf', 'vista_kind', 'terminal', 'packer'},
    "     dark_sidebar        = 'true',
    "     dark_float          = 'true',
    "     colors              = {hint = "orange", error = "#ff0000"}
    " })
    " EOF

endif

set nocompatible

" Overwrite comment style
" highlight Comment gui=italic
" Overwrite colorscheme CursorLineNR settings
highlight clear CursorLine
highlight clear CursorLineNR
highlight CursorLineNR gui=bold guifg=Yellow
" highlight CursorLineNR gui=bold guifg=Blue

set inccommand=split
set conceallevel=0
