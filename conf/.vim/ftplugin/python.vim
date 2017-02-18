" Hitting tab will be spaces
set expandtab 
" How many columns a tab counts for
set tabstop=4
" How many columns text is indented with reindent operations
set shiftwidth=4
" How many columns vim uses when you hit Tab in insert mode
set softtabstop=4

" Run PymodeLint when writing to buffer
autocmd BufWrite * PymodeLint

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_auto_loc_list=1
" let g:syntastic_loc_list_height=5
" let python_highlight_all=1
