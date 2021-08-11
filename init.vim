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

" GitHub Light Color Settings
" lua << EOF
" require('github-theme').setup({
"     themeStyle      = 'light',
"     commentStyle    = 'italic',
"     functionStyle   = 'italic',
"     sidebars        = {'qf', 'vista_kind', 'terminal', 'packer'},
"     darkSidebar     = 'true',
"     darkFloat       = 'true',
"     colors = {hint = "orange", error = "#ff0000"}
" })
" EOF
elseif exists('g:vscode')
endif

set nocompatible

" Overwrite comment style
" highlight Comment gui=italic
" Overwrite colorscheme CursorLineNR settings
highlight clear CursorLine
highlight clear CursorLineNR
highlight CursorLineNR gui=bold guifg=Yellow
" highlight CursorLineNR gui=bold guifg=DarkBlue

set inccommand=split
