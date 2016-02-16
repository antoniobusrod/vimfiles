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
Plugin 'vim-airline/vim-airline.git'
Plugin 'vim-airline/vim-airline-themes.git'
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
Plugin 'gregsexton/gitv'
" ============================================================================

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

