"======================================="
"           vim-commentary              "
"======================================="
" Add comment character '#' for unsupported filetype
" autocmd FileType apache setlocal commentstring=#\ %s

"======================================="
"              lightline                "
"======================================="
let g:lightline = {
      \ 'colorscheme': 'dracula_pro',
      \ }

"======================================="
"              indentLine               "
"======================================="
let g:indentLine_char = '▏'
let g:indentLine_color_term = 237

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
"           telescope.nvim              "
"======================================="
exec 'luafile' expand(g:custom_path . 'lua/nvim-telescope.lua')
 
"======================================="
"              nerdtree                 "
"======================================="
" open vim with nerdtree open
autocmd VimEnter * NERDTreeVCS
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

