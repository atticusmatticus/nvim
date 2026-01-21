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

""" Navigation and Key Functionality Mappings
" Quiting and saving
nnoremap <leader>qq     :q<cr>
nnoremap <leader>qa     :qa<cr>
nnoremap <leader>ww     :w<cr>
nnoremap <leader>wa     :wa<cr>
nnoremap <leader>xx     :x<cr>
nnoremap <leader>xa     :xa<cr>

" Close all windows but current and nerdtree
nnoremap <leader>on     :on<CR>:NERDTreeToggleVCS<CR>:wincmd l<CR>

" Escaping insert/visual modes
ino jk      <esc>
ino kj      <esc>
cno jj      <c-c>
vno v       <esc>

" Fold control
map <leader>F       [fold]
map [fold]f         :zf<CR>
map [fold]d         :zd<CR>
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
" Delete buffer
nmap <leader>bd     :bd<CR>

""" Window mappings
nnoremap <silent> <leader>h	            :wincmd h<CR>
nnoremap <silent> <leader>j	            :wincmd j<CR>
nnoremap <silent> <leader>k	            :wincmd k<CR>
nnoremap <silent> <leader>l	            :wincmd l<CR>
nnoremap <silent> <leader>H	            :wincmd H<CR>
nnoremap <silent> <leader>J	            :wincmd J<CR>
nnoremap <silent> <leader>K	            :wincmd K<CR>
nnoremap <silent> <leader>L	            :wincmd L<CR>
" nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <silent> <leader>v+ 	:vertical resize +5<CR>
nnoremap <silent> <leader>v- 	:vertical resize -5<CR>
nnoremap <silent> <leader>+ 	:resize +5<CR>
nnoremap <silent> <leader>- 	:resize -5<CR>

""" Popup menu remappings
inoremap <expr> <C-j>           pumvisible() ? "<C-n>" : "<C-j>"
inoremap <expr> <C-k>           pumvisible() ? "<C-p>" : "<C-k>"
inoremap <expr> <C-d>           pumvisible() ? "<PageDown><C-p><C-n>" : "<C-d>"
inoremap <expr> <C-u>           pumvisible() ? "<PageUp><C-p><C-n>" : "<C-u>"
inoremap <expr> <Tab>           pumvisible() ? "<C-n>" : "<Tab>"
inoremap <expr> <S-Tab>         pumvisible() ? "<C-p>" : "<S-Tab>"
" inoremap <expr> <Esc>           pumvisible() ? (complete_info().selected == -1 ? "<Esc>" : "<C-e>")  : "<Esc>"
" inoremap <expr> <CR>            pumvisible() ? (complete_info().selected == -1 ? "<C-e><CR>" : "<C-y>") : "<CR>"

""" Spelling mapping
map <leader>sp      :Spell<CR>
map <leader>spz     1z=<CR>



"======================================="
"             Plugin mappings           "
"======================================="

"------------------------------"
"          lazy.nvim           "
"------------------------------"
nnoremap <leader><C-l>      :Lazy<CR>

"------------------------------"
"     nerdtree/CHADtree        "
"------------------------------"
nnoremap <leader>pv     :NERDTreeToggleVCS<CR>
nnoremap <leader>pf     :NERDTreeFocus<CR>
" nnoremap <leader>pv     :CHADopen<CR>


"------------------------------"
"           undotree           "
"------------------------------"
if exists('g:vscode')
    " Keep undo/redo lists in sync with VSCode
    nmap <silent> u <Cmd>call VSCodeNotify('undo')<CR>
    nmap <silent> <C-r> <Cmd>call VSCodeNotify('redo')<CR>

else
    nnoremap <leader>u		:UndotreeShow<CR>

endif


"------------------------------"
"        nvim-lspconfig        "
"------------------------------"
nnoremap <leader>dc     :lua vim.lsp.diagnostic.clear(0)<CR>


"------------------------------"
"        lspsaga.nvim          "
"------------------------------"
" " lsp provider to find the cursor word definition and reference
" nnoremap <silent><leader>gh         :Lspsaga lsp_finder<CR>

" " code action
" nnoremap <silent><leader>ca         :Lspsaga code_action<CR>
" vnoremap <silent><leader>ca         :<C-U>Lspsaga range_code_action<CR>

" " show hover doc
" nnoremap <silent> K                 :Lspsaga hover_doc<CR>
" " scroll down hover doc or scroll in definition preview
" nnoremap <silent> <C-f>             <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
" " scroll up hover doc
" nnoremap <silent> <C-b>             <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>

" " show signature help
" nnoremap <silent> <C-k>             :Lspsaga signature_help<CR>

" " rename
" " close rename win use <C-c> in insert mode or `q` in noremal mode or `:q`
" nnoremap <silent><leader>rn         :Lspsaga rename<CR>

" " preview definition
" nnoremap <silent><leader>dp         :Lspsaga preview_definition<CR>

" " show diagnostics
" nnoremap <silent><leader>dd         :Lspsaga show_line_diagnostics<CR>
" " jump diagnostic
" nnoremap <silent> [e                :Lspsaga diagnostic_jump_next<CR>
" nnoremap <silent> ]e                :Lspsaga diagnostic_jump_prev<CR>

" " float terminal also you can pass the cli command in open_float_terminal function
" nnoremap <silent> <A-d>             :Lspsaga open_floaterm<CR>
" tnoremap <silent> <A-d> <C-\><C-n>  :Lspsaga close_floaterm<CR>


" " display a float window with diagnostic info using saga
" " vim.cmd [[autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()]]
" " autocmd CursorHold *                :Lspsaga show_line_diagnostics
" " vim.cmd [[autocmd CursorHoldI * silent! lua vim.lsp.buf.signature_help()]]
" autocmd CursorHoldI * silent!       :Lspsaga signature_help


"------------------------------"
"        telescope.nvim        "
"------------------------------"
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
" nnoremap <leader>fg <cmd>Telescope live_grep<cr> " bug in telescope core that breaks fuzzy matching
nnoremap <leader>fg <cmd>Telescope grep_string search=<cr>
nnoremap <leader>fm <cmd>Telescope keymaps<cr>
nnoremap <leader>fc <cmd>Telescope commands<cr>
nnoremap <leader>fh <cmd>Telescope command_history<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


"------------------------------"
"        fzf / fzf.vim         "
"------------------------------"
" nnoremap <leader>ff     :Files<CR>
" nnoremap <leader>fg     :Rg<CR>
" nnoremap <leader>fh     :History<CR>
nnoremap <leader>f/     :History/<CR>
nnoremap <leader>f:     :History:<CR>
" nnoremap <leader>fc     :Commands<CR>
" nnoremap <leader>fm     :Maps<CR>

" " Mapping selecting mappings
" nmap <leader><tab> <plug>(fzf-maps-n)
" xmap <leader><tab> <plug>(fzf-maps-x)
" omap <leader><tab> <plug>(fzf-maps-o)

" " Insert mode completion
" imap <c-x><c-k> <plug>(fzf-complete-word)
" imap <c-x><c-f> <plug>(fzf-complete-path)
" imap <c-x><c-l> <plug>(fzf-complete-line)


"------------------------------"
"         jupyter.vim          "
"------------------------------"
" noremap <leader>nC      :JupyterConnect<cr>
" noremap <leader>nR      :JupyterRunFile<cr>
" noremap <leader>nc      :JupyterSendCell<cr>

" " Runs current line if no range given :[1,2]JupyterSendRange
" noremap <leader>nr      :JupyterSendRange<cr>


"------------------------------"
"       telekasten.vim         "
"------------------------------"
noremap <leader>z       :Telekasten panel<cr>
noremap <leader>zf		:Telekasten find_notes<cr>
noremap <leader>zg		:Telekasten search_notes<cr>
noremap <leader>zd		:Telekasten goto_today<cr>
noremap <leader>zl		:Telekasten follow_link<cr>
noremap <leader>zi		:Telekasten insert_link<cr>
noremap <leader>zn		:Telekasten new_note<cr>
noremap <leader>zc		:Telekasten show_calendar<cr>
noremap <leader>zb		:Telekasten show_backlinks<cr>
noremap <leader>zI		:Telekasten insert_img_link<cr>

