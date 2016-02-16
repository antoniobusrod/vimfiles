set nocompatible              " be iMproved, required
filetype off                  " required

" =============== Vundle Initialization ===============
" " This loads all the plugins specified in ~/.vim/vundles.vim
" " Use Vundle plugin to manage all other plugins
if filereadable(expand("~/.vim/vundle.vim"))
  source ~/.vim/vundle.vim
endif

set background=light
syntax on

set encoding=utf-8

set laststatus=2 " enable vim-airline
set autochdir    " Automatically change the current directory
set number       " Display line numbers
set autoread     " Automatic read outside file changes

set backspace=2  " make backspace work like most other apps
set wrap
set linebreak
set autoindent   " align the new line indent with the previous line
set tabstop=2    " an hard TAB displays as 2 columns
set shiftwidth=2 " operation >> indents 2 columns; << unindents 2 columns
set expandtab    " insert spaces when hitting TABs
" set softtabstop=2 " insert/delete 2 spaces when hitting a TAB/BACKSPACE
" set shiftround    " round indent to multiple of 'shiftwidth'
set formatoptions=l " word wrap without line breaks I
set lbr " word wrap without line breaks II
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
map <C-t> :tabnew <Enter>
" map <C-w> :close <Enter>
" map <C-W> :q! <Enter>
map <F3> n
map <F6> :CoffeeLint<CR>
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

set langmenu=en_US.UTF-8
let $LANG = 'en_US'
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

map <leader>l :Align
nmap <leader>a :Ack<space>
nmap <leader>b :CtrlPBuffer<CR>
nmap <leader>d :NERDTreeToggle<CR>
nmap <leader>f :NERDTreeFind<CR>
nmap <leader>t :CtrlP<CR>
nmap <leader>] :TagbarToggle<CR>
nmap <leader><space> :call whitespace#strip_trailing()<CR>
nmap <leader>g :GitGutterToggle<CR>
nmap <leader>c <Plug>Kwbd
map <silent> <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

imap <C-Return> <CR><CR><C-o>k<Tab>

" search for visually selected text
:vn // y/<C-R>"<CR>

au BufNewFile,BufRead *.dsc set filetype=javascript
" au BufNewFile,BufRead *.xml,*.htm,*.html so XMLFolding
" let g:xml_syntax_folding=1
" au FileType xml setlocal foldmethod=syntax

" Don't screw up folds when inserting text that might affect them, until
" leaving insert mode. Foldmethod is local to the window. Protect against
" screwing up folding when switching between windows.
autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif

" fold by indentation, two-space indentation for CoffeeScript files
autocmd BufNewFile,BufReadPost *.coffee setl foldmethod=indent shiftwidth=2

" Vertical column at 80
if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

set t_Co=256

endif

colorscheme lucius
LuciusDarkLowContrast

" ================ Custom Settings ========================
so ~/.vim/config.vim


