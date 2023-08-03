" =============================================================================
" editorconfig plugin settings
" =============================================================================
 let g:EditorConfig_max_line_indicator = "line"
" =============================================================================


" =============================================================================
" fzf plugin settings
" =============================================================================
nmap <leader>t :FZF<CR>
nmap <leader>a :Ag<CR>
let $FZF_DEFAULT_COMMAND = 'ag -g ""'


" =============================================================================
" instant-markdown
" =============================================================================
let g:instant_markdown_autostart = 0 " use :InstantMarkdownPreview instead


" =============================================================================
" localvimrc plugin settings
" =============================================================================
let g:localvimrc_ask=0


" =============================================================================
" markdown plugin settings
" =============================================================================
let g:vim_markdown_initial_foldlevel=20
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" =============================================================================
" nerdcommenter plugin settings
" =============================================================================
let g:NERDSpaceDelims=1


" =============================================================================
" node-dict plugin settings
" =============================================================================
au FileType javascript set dictionary+=$HOME/vimfiles/dict/node.dict


" =============================================================================
" node plugin settings
" =============================================================================
let g:node#includeCoffee = 1


" =============================================================================
" signify plugin settings
" =============================================================================
let g:signify_sign_overwrite = 1
let g:signify_vcs_list = [ 'git' ]
let g:signify_update_on_focusgained = 1


" =============================================================================
" syntastic plugin settings
" =============================================================================
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height = 0
let g:syntastic_aggregate_errors = 1
let g:syntastic_enable_balloons = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_coffeescript_checkers = ['coffeelint']
let g:syntastic_typescript_checkers = ['tsuquyomi', 'tslint']
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_mode_map = { 'mode': 'active' }

" =============================================================================
" tsuquyomi plugin settings
" =============================================================================
let g:tsuquyomi_disable_quickfix = 1
let g:tsuquyomi_save_onrename = 1
autocmd FileType typescript nmap <buffer> <F6> : <C-u>echo tsuquyomi#hint()<CR>
autocmd FileType typescript nmap <buffer> <leader><F6> : let @a=tsuquyomi#hint()<CR>

" =============================================================================
" copilot plugin settings
" =============================================================================
let g:copilot_filetypes = {
  \ 'markdown': v:true
\}
