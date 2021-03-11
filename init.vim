set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

" Define path nvimrc path and function to load files
let g:custom_path = '~/.config/nvim/'
func LoadConfig(name)
    exec 'source' g:custom_path . a:name . '.vim'
endfunc

" colorscheme gruvbox
" let g:gruvbox_contrast_dark='hard'
let g:dracula_colorterm = 0
set termguicolors
colorscheme dracula_pro
" colorscheme dracula_pro_van_helsing
set background=dark

call LoadConfig('plugins')
call LoadConfig('base')
call LoadConfig('plugin-settings')
call LoadConfig('keymap')

set nocompatible

" Overwrite comment style
" highlight Comment gui=italic
" Overwrite colorscheme CursorLineNR settings
highlight clear CursorLine
highlight clear CursorLineNR
highlight CursorLineNR gui=bold guifg=Yellow

set inccommand=split
