set nocompatible " be iMproved, required
filetype off     " required
syntax on
set encoding=utf-8
set ffs=unix,dos,mac

" =============== Vundle Initialization ===============
" " This loads all the plugins specified in ~/.vim/vundles.vim
" " Use Vundle plugin to manage all other plugins
if filereadable(expand("~/.vim/plug-plugins.vim"))
  call plug#begin('~/.vim/plugged')
  so ~/.vim/plug-plugins.vim
  call plug#end()
endif

set laststatus=2      " enable vim-airline
set number            " Display line numbers
set relativenumber    " Show relative line numbers
set autoread          " Automatic read outside file changes
set tabstop=2         " an hard TAB displays as 2 columns
set shiftwidth=2      " operation >> indents 2 columns; << unindents 2 columns
set backspace=2       " make backspace work like most other apps
set wrap
set linebreak
set autoindent        " align the new line indent with the previous line
set smartindent
set expandtab         " insert spaces when hitting TABs
set formatoptions=l   " word wrap without line breaks I
set lbr               " word wrap without line breaks II
set hlsearch
set smartcase
set incsearch
set foldmethod=syntax
set foldlevel=20      " Disable fold as soon as you open a file
set showcmd           " Show incomplete cmds down the bottom
set showmode          " Show current mode down the bottom

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

set langmenu=en_US.UTF-8
let $LANG = 'en_US'
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" keyboard shortcuts
let mapleader = ','
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-a> GVgg
map <F9> :nohlsearch<CR>
map <F5> :tabclose<CR>
map <F8> :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>
map <2-LeftMouse> :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>
map <leader>l :Align
nmap <leader>d :Explore<CR>
nnoremap <Leader>w :w<CR>
nmap <leader><space> :call whitespace#strip_trailing()<CR>
nmap <leader>g :GitGutterToggle<CR>
nmap <leader>c <Plug>Kwbd
map <silent> <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>
nmap <leader>gcl :!git cola &<cr>

ca tn tabnew
ca th tabp
ca tl tabn

" search for visually selected text
:vn // y/<C-R>"<CR>

au BufNewFile,BufRead *.wsdl set filetype=xml
au BufNewFile,BufRead *.dsc set filetype=javascript
au FileType xml setlocal foldmethod=syntax

" Don't screw up folds when inserting text that might affect them, until
" leaving insert mode. Foldmethod is local to the window. Protect against
" screwing up folding when switching between windows.
autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif

autocmd Syntax yaml,yml setlocal foldmethod=indent " Use identation foldmethod for Markdown
autocmd Syntax python setlocal foldmethod=indent " Use identation foldmethod for Python

" PEP 8 indentation
au BufNewFile,BufRead *.py set tabstop=4
au BufNewFile,BufRead *.py set softtabstop=4
au BufNewFile,BufRead *.py set shiftwidth=4
au BufNewFile,BufRead *.py set textwidth=79
au BufNewFile,BufRead *.py set expandtab
au BufNewFile,BufRead *.py set autoindent
au BufNewFile,BufRead *.py set fileformat=unix

" Vertical column at 80
if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

set t_Co=256

" ================ Swap Files ======================
set backupdir=/tmp
set dir=/tmp

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
if has('persistent_undo') && !isdirectory(expand('~').'/.vim/backups')
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
endif

" ================ Editing ===========================
set clipboard+=unnamed " Yanks go on clipboard instead.

" ================ Local Vimrc ========================
" Use local vimrc if available
if filereadable(expand("~/.vimrc.local"))
  so ~/.vimrc.local
endif

if filereadable(expand("~/.vim/plug-config.vim"))
  so ~/.vim/plug-config.vim
endif

" imap <C-Return> <CR><CR><C-o>k<Tab>
set go=c

set omnifunc=syntaxcomplete#Complete

