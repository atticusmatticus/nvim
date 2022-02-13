set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

" Define path nvimrc path and function to load files
let g:custom_path = '~/.config/nvim/'
func LoadConfig(name)
    exec 'source' g:custom_path . a:name . '.vim'
endfunc

" GruvBox Color Settings
" colorscheme gruvbox
" let g:gruvbox_contrast_dark='hard'

if has('nvim')

" Dracula Color Settings
let g:dracula_colorterm = 0
set termguicolors
colorscheme dracula_pro
set background=dark

call LoadConfig('plugins')
call LoadConfig('base')
call LoadConfig('plugin-settings')
call LoadConfig('keymap')

" One Color Settings
" set termguicolors
" colorscheme one
" set background=light " light version
" let g:one_allow_italics = 1

" GitHub Light Color Settings
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

elseif exists('g:vscode')

call LoadConfig('plugins')
call LoadConfig('base')
call LoadConfig('plugin-settings')
call LoadConfig('keymap')

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
