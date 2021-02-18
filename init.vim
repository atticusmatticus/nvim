set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
"source ~/.vim/vimrc

let g:custom_path = '~/.config/nvim/'

func LoadConfig(name)
    exec 'source' g:custom_path . a:name . '.vim'
endfunc

call LoadConfig('plugins')
call LoadConfig('base')
call LoadConfig('plugin-settings')
call LoadConfig('keymap')

set nocompatible

" colorscheme gruvbox
" let g:gruvbox_contrast_dark='hard'
let g:dracula_colorterm = 0
set termguicolors
colorscheme dracula_pro
" colorscheme dracula_pro_van_helsing
set background=dark

" Overwrite comment style
" highlight Comment gui=italic
" Overwrite colorscheme CursorLineNR settings
highlight clear CursorLine
highlight clear CursorLineNR
highlight CursorLineNR gui=bold guifg=Yellow

set inccommand=split
