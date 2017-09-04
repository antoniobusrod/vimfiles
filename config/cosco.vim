set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %{LineNoIndicator()}
autocmd FileType javascript,css,typescript nmap <silent> <Leader>; <Plug>(cosco-commaOrSemiColon)
autocmd FileType javascript,css,typescript imap <silent> <Leader>; <c-o><Plug>(cosco-commaOrSemiColon)

