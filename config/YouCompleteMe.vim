" These are the tweaks I apply to YCM's config, you don't need them but they might help.
" YCM gives you popups and splits by default that some people might not like, so these should tidy it up a bit for you.
let g:ycm_add_preview_to_completeopt=0
let g:ycm_semantic_triggers = {
	\   'c' : ['->', '.'],
	\   'objc' : ['->', '.'],
	\   'ocaml' : ['.', '#'],
	\   'cpp,objcpp' : ['->', '.', '::'],
	\   'perl' : ['->'],
	\   'php' : ['->', '::', '"', "'", 'use ', 'namespace ', '\'],
	\   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
	\   'html': ['<', '"', '</', ' '],
	\   'vim' : ['re![_a-za-z]+[_\w]*\.'],
	\   'ruby' : ['.', '::'],
	\   'lua' : ['.', ':'],
	\   'erlang' : [':'],
	\   'haskell' : ['.', 're!.']
	\ }
" let g:ycm_confirm_extra_conf=0
" set completeopt-=preview
