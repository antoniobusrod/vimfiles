let g:tsuquyomi_disable_quickfix = 1
autocmd FileType typescript nmap <buffer> <F6> : <C-u>echo tsuquyomi#hint()<CR>
autocmd FileType typescript nmap <buffer> <leader><F6> : let @a=tsuquyomi#hint()<CR>

