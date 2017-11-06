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
Plugin 'ctrlpvim/ctrlp.vim.git'
Plugin 'Raimondi/delimitMate.git' " provides insert mode auto-completion for quotes, parens, brackets, etc
Plugin 'scrooloose/nerdtree.git'
Plugin 'godlygeek/tabular.git'
Plugin 'chriskempson/base16-vim'
Plugin 'tpope/vim-fugitive.git'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'suan/vim-instant-markdown.git'
Plugin 'pangloss/vim-javascript'
Plugin 'groenewege/vim-less.git'
Plugin 'plasticboy/vim-markdown.git'
Plugin 'terryma/vim-multiple-cursors.git'
Plugin 'jshafton/vim-node.git'
Plugin 'guileen/vim-node-dict.git'
Plugin 'mhinz/vim-signify.git'
Plugin 'tpope/vim-surround.git'
Plugin 'scrooloose/syntastic'
Plugin 'elzr/vim-json'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'leafgarland/typescript-vim.git'
Plugin 'embear/vim-localvimrc'
Plugin 'Quramy/tsuquyomi'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'nginx.vim'
Plugin 'lfilho/cosco.vim'

" ============================================================================

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

