set encoding=utf-8

let python_highlight_all=1
syntax on

" Hitting tab will be spaces
set expandtab 
" How many columns a tab counts for
set tabstop=4
" How many columns text is indented with reindent operations
set shiftwidth=4
" How many columns vim uses when you hit Tab in insert mode
set softtabstop=4

if exists('+colorcolumn')
  set colorcolumn=81
  highlight ColorColumn ctermbg=yellow
endif

let NERDTreeIgnore=['\.pyc$', '\~$', '__pycache__'] "ignore files in NERDTree

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

let g:SimpylFold_docstring_preview=1
NERDTreeToggle

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_auto_loc_list=1
" let g:syntastic_loc_list_height=5
" let python_highlight_all=1
