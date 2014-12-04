let g:pathogen_disabled = [ 'vim-node-dict' ]
execute pathogen#infect()
syntax on
filetype plugin indent on
set encoding=utf-8

" enable vim-airline
set laststatus=2

set autochdir
set number
set autoread

" Theme (color scheme)
set background=light
" colorscheme desert "good in dark console?
" colorscheme lucius "favourite
" LuciusLight

" not working in console, only gvim o MacVim
" set clipboard=unnamedplus

set wrap
set linebreak
set autoindent    " align the new line indent with the previous line
set noexpandtab
set tabstop=2     " an hard TAB displays as 2 columns
set shiftwidth=2  " operation >> indents 2 columns; << unindents 2 columns
"set expandtab     " insert spaces when hitting TABs
"set softtabstop=2 " insert/delete 2 spaces when hitting a TAB/BACKSPACE
"set shiftround    " round indent to multiple of 'shiftwidth'
set formatoptions=l
set lbr
set hlsearch
" set ignorecase!
set smartcase
set incsearch
set foldmethod=syntax
" Disable fold as soon as you open a file
set foldlevel=20

" Enable folding for vim-javascript-syntax plugin
au FileType javascript call JavaScriptFold()

" keyboard shortcuts
let mapleader = ','
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-a> GVgg
map <C-s> :w <Enter>
map <C-c> y
map <C-x> d
map <C-z> u
map <C-t> :tabnew <Enter>
" map <C-w> :close <Enter>
" map <C-W> :q! <Enter>
map <F3> n
map <F7> :JSHint<CR>
" map <C-h> :%s/
map <S-t> vat
map <S-T> vit
map <S-{> vi{
map <S-(> vi(
map <S-[> vi[
map <F9> :nohlsearch<CR>
map <F5> :tabclose<CR>
map <F8> :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>
map <2-LeftMouse> :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>

" au BufNewFile,BufRead *.rabl so <sfile>:h/ruby.vim
au BufNewFile,BufRead *.rabl set filetype=ruby
set guifont=Consolas:h10
set ruler
set nobackup
set langmenu=en_US
let $LANG = 'en_US'
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

map <leader>l :Align
nmap <leader>a :Ack<space>
nmap <leader>b :CtrlPBuffer<CR>
nmap <leader>d :NERDTreeToggle<CR>
nmap <leader>f :NERDTreeFind<CR>
nmap <leader>t :CtrlP<CR>
" nmap <leader>T :CtrlPClearCache<CR>:CtrlP<CR>
nmap <leader>] :TagbarToggle<CR>
nmap <leader><space> :call whitespace#strip_trailing()<CR>
nmap <leader>g :GitGutterToggle<CR>
nmap <leader>c <Plug>Kwbd
map <silent> <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" ctrlp.vim config
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

let g:NERDTreeWinSize=50 
let g:NERDSpaceDelims=1
au FileType javascript set dictionary+=$HOME/vimfiles/dict/node.dict
" let g:tern_map_keys=1
" let g:tern_show_argument_hints='on_hold'
au BufNewFile,BufRead *.dsc set filetype=javascript
" au BufNewFile,BufRead *.xml,*.htm,*.html so XMLFolding
" let g:xml_syntax_folding=1
" au FileType xml setlocal foldmethod=syntax

" Don't screw up folds when inserting text that might affect them, until
" leaving insert mode. Foldmethod is local to the window. Protect against
" screwing up folding when switching between windows.
autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif

let g:EasyGrepRecursive=1

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
" disable detection of whitespace errors
let g:airline#extensions#whitespace#enabled = 0

" vim-markdown
let g:vim_markdown_initial_foldlevel=20

" vim-signify
let g:signify_vcs_list = [ 'git' ]
let g:signify_update_on_focusgained = 1

