"======================================="
"             System mappings           "
"======================================="

" Map Leader
let mapleader = "\<space>"

""" Nvim Dotfile Mappings
" Init.vim
nnoremap <leader>ev     :e ~/.config/nvim/<CR>
nnoremap <leader>sv     :sp ~/.config/nvim/<CR>
" nnoremap <leader>ev     :e ~/.vim/vimrc<CR>
" nnoremap <leader>sv     :sp ~/.vim/vimrc<CR>

" Zshrc
nnoremap <leader>ez     :e ~/.zshrc<CR>
nnoremap <leader>sz     :sp ~/.zshrc<CR>

" Zsh Dotfiles
nnoremap <leader>ed     :e ~/.dotfiles/zsh/<CR>
nnoremap <leader>sd     :sp ~/.dotfiles/zsh/<CR>

" Nvim Terminal
nnoremap <leader>et     :terminal<CR>
nnoremap <leader>st     :sp<CR>:wincmd j<CR>:terminal<CR>

" Sourch Nvim
nnoremap <leader>S      :source ~/.config/nvim/init.vim<CR>

""" Navigation Mappings
" Escaping insert/visual modes
ino jk <esc>
ino kj <esc>
cno jj <c-c>
vno v <esc>

" Fold controll
map <leader>F       [fold]
map [fold]o         :foldopen<CR>
map [fold]c         :foldclose<CR>

" Remove Search Highlight
nnoremap <leader>N   :noh<CR>

" Yank whole file
map <leader>Y       ggyG``

" Yank to system clipboard, (have to follow with a key to select text e.g. 'E')
map <leader>y       "*y

""" Buffer Mappings
" Show buffers
nmap <leader>b      :b<space>
" Go back
nmap <leader>bp     :bp<CR>
" Go next
nmap <leader>bn     :bn<CR>

""" Window mappings
nnoremap <leader>h	            :wincmd h<CR>
nnoremap <leader>j	            :wincmd j<CR>
nnoremap <leader>k	            :wincmd k<CR>
nnoremap <leader>l	            :wincmd l<CR>
nnoremap <leader>H	            :wincmd H<CR>
nnoremap <leader>J	            :wincmd J<CR>
nnoremap <leader>K	            :wincmd K<CR>
nnoremap <leader>L	            :wincmd L<CR>
" nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <silent> <leader>+ 	:vertical resize +5<CR>
nnoremap <silent> <leader>- 	:vertical resize -5<CR>

""" Popup menu remappings
inoremap <expr> <C-j>           pumvisible() ? "<C-n>" : "<C-j>"
inoremap <expr> <C-k>           pumvisible() ? "<C-p>" : "<C-k>"
inoremap <expr> <C-d>           pumvisible() ? "<PageDown><C-p><C-n>" : "<C-d>"
inoremap <expr> <C-u>           pumvisible() ? "<PageUp><C-p><C-n>" : "<C-u>"
inoremap <expr> <Tab>           pumvisible() ? "<C-n>" : "<Tab>"
inoremap <expr> <S-Tab>         pumvisible() ? "<C-p>" : "<S-Tab>"
" inoremap <expr> <Esc>           pumvisible() ? (complete_info().selected == -1 ? "<Esc>" : "<C-e>")  : "<Esc>"
" inoremap <expr> <CR>            pumvisible() ? (complete_info().selected == -1 ? "<C-e><CR>" : "<C-y>") : "<CR>"



"======================================="
"             Plugin mappings           "
"======================================="

"------------------------------"
"            nerdtree          "
"------------------------------"
nnoremap <leader>pv     :NERDTreeVCS<CR>
" nnoremap <leader>pv     :CHADopen<CR>


"------------------------------"
"             vsnip            "
"------------------------------"
" " Expand
" imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
" smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'

" " Expand or jump
" imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
" smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'

" " Jump forward or backward
" imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
" smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
" imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
" smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'

" " Select or cut text to use as $TM_SELECTED_TEXT in the next snippet.
" " See https://github.com/hrsh7th/vim-vsnip/pull/50
" nmap        s   <Plug>(vsnip-select-text)
" xmap        s   <Plug>(vsnip-select-text)
" nmap        S   <Plug>(vsnip-cut-text)
" xmap        S   <Plug>(vsnip-cut-text)

" " If you want to use snippet for multiple filetypes, you can `g:vsnip_filetypes` for it.
" let g:vsnip_filetypes = {}
" let g:vsnip_filetypes.javascriptreact = ['javascript']
" let g:vsnip_filetypes.typescriptreact = ['typescript']


"------------------------------"
"           undotree           "
"------------------------------"
nnoremap <leader>u		:UndotreeShow<CR>


"------------------------------"
"          nvim-compe          "
"------------------------------"
" default completion
inoremap <silent><expr> <C-y>       compe#confirm('<C-y>', 'i')
" inoremap <silent><expr> <C-Space>   compe#complete()
inoremap <silent><expr> <CR>        compe#confirm('<CR>')
inoremap <silent><expr> <C-e>       compe#close('<C-e>')


"------------------------------"
"        telescope.nvim        "
"------------------------------"
" Find files using Telescope command-line sugar.
nnoremap <leader>ff     :Telescope find_files<CR>
nnoremap <leader>fg     :Telescope live_grep<CR>
nnoremap <leader>fb     :Telescope buffers<CR>
nnoremap <leader>fh     :Telescope help_tags<CR>


