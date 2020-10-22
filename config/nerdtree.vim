let g:NERDTreeWinSize=50
let NERDTreeIgnore = ['\.pyc$', '__pycache__',]
let g:NERDTreeChDirMode = 1
command! -nargs=1 -complete=dir Nc NERDTree <args> | wincmd p
command! Bookmarks call fzf#run(fzf#wrap({'source': 'find ~ -type d', 'sink': 'Nc'}))
