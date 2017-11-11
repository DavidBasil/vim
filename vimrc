" key mappings
" inoremap jj <esc>
set hlsearch
noremap <silent> <C-a> :NERDTreeToggle<CR>
noremap <silent> <C-f> :FZF<CR>
noremap tt <Esc>:!
:noremap j gj
:noremap k gk
" map <S-tab> <C-W><C-W>
set timeoutlen=1000 ttimeoutlen=0 
set incsearch
set gdefault
nno : ;
nno ; :
vno : ;
vno ; :
" autocmd BufNewFile,BufRead *.ejs set ft=htmldjango
autocmd BufNewFile,BufRead *.pug set ft=html
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
set autoread
" insert a new line in command mode
map <Enter> o<ESC>
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l


let $FZF_DEFAULT_COMMAND = 'ag --ignore node_modules -g ""'

let g:fzf_layout = { 'down': '~20%' }

" let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
let g:qs_first_occurrence_highlight_color = 15
let g:qs_second_occurrence_highlight_color = 15 

nnoremap gm :call cursor(0, len(getline('.'))/2)<cr>
"au BufNewFile,BufRead,BufReadPost *.html set ft=htmldjango

let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ }

let php_htmlInStrings = 1


" Misc
set ignorecase
set linebreak

" nerdtree window size
let g:NERDTreeWinSize=22
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

let g:UltiSnipsExpandTrigger="<tab>"
let g:loaded_matchparen=1
"let g:ctrlp_map = '<c-f>'
"let g:ctrlp_cmd = 'CtrlP'
"let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:NERDTreeQuitOnOpen = 1

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

" vim object
"onoremap <silent>ai :<C-U>cal <SID>IndTxtObj(0)<CR>
"onoremap <silent>ii :<C-U>cal <SID>IndTxtObj(1)<CR>
"vnoremap <silent>ai :<C-U>cal <SID>IndTxtObj(0)<CR><Esc>gv
"vnoremap <silent>ii :<C-U>cal <SID>IndTxtObj(1)<CR><Esc>gv
"
"function! s:IndTxtObj(inner)
"  let curline = line(".")
"  let lastline = line("$")
"  let i = indent(line(".")) - &shiftwidth * (v:count1 - 1)
"  let i = i < 0 ? 0 : i
"  if getline(".") !~ "^\\s*$"
"    let p = line(".") - 1
"    let nextblank = getline(p) =~ "^\\s*$"
"    while p > 0 && ((i == 0 && !nextblank) || (i > 0 && ((indent(p) >= i && !(nextblank && a:inner)) || (nextblank && !a:inner))))
"      -
"      let p = line(".") - 1
"      let nextblank = getline(p) =~ "^\\s*$"
"    endwhile
"    normal! 0V
"    call cursor(curline, 0)
"    let p = line(".") + 1
"    let nextblank = getline(p) =~ "^\\s*$"
"    while p <= lastline && ((i == 0 && !nextblank) || (i > 0 && ((indent(p) >= i && !(nextblank && a:inner)) || (nextblank && !a:inner))))
"      +
"      let p = line(".") + 1
"      let nextblank = getline(p) =~ "^\\s*$"
"    endwhile
"    normal! $
"  endif
"endfunction
let g:sneak#s_next = 1

" Plugins
call plug#begin('~/.vim/plugged')
" Make sure you use single quotes
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'jiangmiao/auto-pairs'
Plug 'reewr/vim-monokai-phoenix'
Plug 'tpope/vim-commentary'
Plug 'pangloss/vim-javascript'
Plug 'itchyny/lightline.vim'
Plug 'crusoexia/vim-monokai'
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'digitaltoad/vim-pug'
"Plug 'gregsexton/MatchTag'
Plug 'tmhedberg/matchit'
Plug 'romainl/vim-cool'
Plug 'justinmk/vim-sneak'
"Plug 'tpope/vim-surround'
"Plug 'unblevable/quick-scope'
"Plug 'rking/ag.vim'
"Plug 'nikvdp/ejs-syntax'
" Initialize plugin system
call plug#end()
