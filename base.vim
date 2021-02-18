syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set startofline
set number
set cursorline
set ignorecase
set smartcase
set wrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set exrc
set noshowmode
set updatetime=100
"
set hidden "" dont have to write files to disk to switch from them in buffer
let $RTP=split(&runtimepath, ',')[0]
let $RC="$HOME/.vim/vimrc"
"setlocal colorcolumn=80
"set path=.,** " path is current file and working directory and all of its children
set cmdheight=2 " give more space for displaying messages

" LaTeX glyphify disable
let g:tex_conceal = 0 " dont glyphify characters

" Set default shell for neovim terminal buffer
set shell=/usr/local/bin/zsh

" Change \<Tab> behavior based on location for incsearch functionality
function! CleverTab()
   if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
      return "\<Tab>"
   else
      return "\<C-N>"
   endif
endfunction
inoremap <Tab> <C-R>=CleverTab()<CR>


" :Spell => enable spelling command 
command Spell :setlocal spell spelllang=en_us


" Remember cursor pos
autocmd BufReadPost *
  \  if line("'\"") > 1 && line("'\"") <= line("$") |
  \    exe "normal! g`\"" |
  \  endif

