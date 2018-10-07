let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_server_python_interpreter = '/usr/bin/python3'
let g:ycm_filetype_specific_completion_to_disable = {
      \ 'javascript': 1,
      \ 'typescript': 1,
      \ 'gitcommit': 1
      \}
