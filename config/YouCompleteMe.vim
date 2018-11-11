let g:ycm_python_binary_path = 'python3'
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_server_python_interpreter = '/usr/bin/python3'
let g:ycm_filetype_specific_completion_to_disable = {
      \ 'typescript': 1,
      \ 'gitcommit': 1
      \}
nmap <leader>jd :YcmCompleter GoTo<CR>
nmap <leader>jf :YcmCompleter GoToDefinition<CR>
nmap <leader>jh :YcmCompleter GetDoc<CR>

