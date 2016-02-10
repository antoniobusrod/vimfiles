set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" ============================================================================
" ==== Custom plugins ========================================================
" ============================================================================
Plugin 'vim-scripts/The-NERD-Commenter.git'
Plugin 'vim-scripts/XML-Folding.git'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ctrlpvim/ctrlp.vim.git'
Plugin 'Raimondi/delimitMate.git' " provides insert mode auto-completion for quotes, parens, brackets, etc
" Plugin 'twitter/hogan.js'
Plugin 'scrooloose/nerdtree.git'
Plugin 'godlygeek/tabular.git'
Plugin 'marijnh/tern_for_vim.git'
Plugin 'bling/vim-airline.git'
Plugin 'moll/vim-bbye.git' " Buffer Bye
Plugin 'antoniobusrod/vim-coffee-script.git'
" Plugin 'altercation/vim-colors-solarized.git'
" Plugin 'antoniobusrod/vim-daylight.git'
" Plugin 'svermeulen/vim-easyclip.git'
Plugin 'dkprice/vim-easygrep.git'
Plugin 'Lokaltog/vim-easymotion.git'
Plugin 'tpope/vim-fugitive.git'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'suan/vim-instant-markdown.git'
Plugin 'digitaltoad/vim-jade.git'
Plugin 'antoniobusrod/vim-javascript-syntax.git'
Plugin 'groenewege/vim-less.git'
Plugin 'jonathanfilip/vim-lucius.git'
Plugin 'plasticboy/vim-markdown.git'
" Plugin 'xolox/vim-misc.git'
Plugin 'terryma/vim-multiple-cursors.git'
" Plugin 'mustache/vim-mustache-handlebars.git'
Plugin 'jshafton/vim-node.git'
Plugin 'guileen/vim-node-dict.git'
Plugin 'tpope/vim-repeat.git'
Plugin 'mhinz/vim-signify.git'
Plugin 'tpope/vim-surround.git'
" Plugin 'ingydotnet/yaml-vim.git'
Plugin 'scrooloose/syntastic'
Plugin 'Shutnik/jshint2.vim'
Plugin 'elzr/vim-json'
" ============================================================================

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

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

" fold by indentation, two-space indentation for CoffeeScript files
autocmd BufNewFile,BufReadPost *.coffee setl foldmethod=indent shiftwidth=2
let g:node#includeCoffee = 1

let g:EasyGrepRecursive=1

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
" disable detection of whitespace errors
let g:airline#extensions#whitespace#enabled = 0

" vim-markdown
let g:vim_markdown_initial_foldlevel=20
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" vim-instant-markdown
let g:instant_markdown_autostart = 0 " use :InstantMarkdownPreview instead

" vim-signify
let g:signify_vcs_list = [ 'git' ]
let g:signify_update_on_focusgained = 1

" Vertical column at 80
if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height = 3
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_coffeescript_checkers = ['coffeelint']
set t_Co=256
