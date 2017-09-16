" key mappings
" inoremap jj <esc>
noremap <silent> <C-a> :NERDTreeToggle<CR>
noremap <silent> <C-f> :FZF<CR>
noremap tt <Esc>:!
:noremap j gj
:noremap k gk
" map <S-tab> <C-W><C-W>
set timeoutlen=1000 ttimeoutlen=0 
set incsearch
nno : ;
nno ; :
vno : ;
vno ; :
autocmd BufNewFile,BufRead *.ejs set ft=htmldjango
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
set autoread
" insert a new line in command mode
map <Enter> o<ESC>


nnoremap <C-h> <C-w>h
nnoremap J <C-w>j
nnoremap K <C-w>k
nnoremap <C-l> <C-w>l

nnoremap gm :call cursor(0, len(getline('.'))/2)<cr>
au BufNewFile,BufRead,BufReadPost *.html set ft=htmldjango

let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ }

let php_htmlInStrings = 1

" Misc
set ignorecase
set linebreak

" nerdtree window size
let g:NERDTreeWinSize=20
" let g:NERDTreeQuitOnOpen = 1
let NERDTreeShowHidden=1
set noshowmode
" split settings
set splitbelow
set splitright

filetype on
filetype plugin on
autocmd Filetype python setlocal colorcolumn=80

set shiftwidth=2

syntax enable
syntax on
set tabstop=2      
set number
set nobackup
colorscheme monokai-phoenix
set noswapfile
set laststatus=2

" FZF

let g:UltiSnipsExpandTrigger="<tab>"
let g:loaded_matchparen=1
let g:ctrlp_map = '<c-f>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Cursor
"if has("autocmd")
"  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
"  au InsertEnter,InsertChange *
"    \ if v:insertmode == 'i' | 
"    \   silent execute '!echo -ne "\e[6 q"' | redraw! |
"    \ elseif v:insertmode == 'r' |
"    \   silent execute '!echo -ne "\e[4 q"' | redraw! |
"    \ endif
"  au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
"	endif

" Plugins
call plug#begin('~/.vim/plugged')
" Make sure you use single quotes
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'SirVer/ultisnips'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'honza/vim-snippets'
Plug 'jiangmiao/auto-pairs'
Plug 'reewr/vim-monokai-phoenix'
Plug 'tpope/vim-commentary'
Plug 'NLKNguyen/copy-cut-paste.vim'
Plug 'pangloss/vim-javascript'
Plug 'itchyny/lightline.vim'
Plug 'crusoexia/vim-monokai'
"Plug 'nikvdp/ejs-syntax'
" Initialize plugin system
call plug#end()
