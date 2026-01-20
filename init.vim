set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

" Define path nvimrc path and function to load files
let g:custom_path = '~/.config/nvim/'
func LoadConfig(name)
    exec 'source' g:custom_path . a:name . '.vim'
endfunc


let g:uname = system("uname -s")


if exists('g:vscode')
    :source ~/.config/nvim/base.vim
    :source ~/.config/nvim/plugins.vim
    :source ~/.config/nvim/plugin-settings.vim
    :source ~/.config/nvim/keymap.vim
    :source ~/.config/nvim/vscode_settings.vim

else
    "" ------------------------------------ ""
    "" Set Terminal Specific Color Settings ""
    "" ------------------------------------ ""

    "" Dracula Color Settings
    let g:dracula_colorterm = 0
    set termguicolors
    colorscheme dracula_pro
    set background=dark

    call LoadConfig('base')
    call LoadConfig('plugins')
    call LoadConfig('plugin-settings')
    call LoadConfig('keymap')

    " Overwrite comment style
    " highlight Comment gui=italic
    " Overwrite colorscheme CursorLineNR settings
    highlight clear CursorLine
    highlight clear CursorLineNR
    highlight CursorLineNR gui=bold guifg=Yellow
    " highlight CursorLineNR gui=bold guifg=Blue

endif


set nocompatible

set inccommand=split
set conceallevel=0
