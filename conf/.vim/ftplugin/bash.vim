" Hitting tab will be spaces
set expandtab 
" How many columns a tab counts for
set tabstop=2
" How many columns text is indented with reindent operations
set shiftwidth=2
" How many columns vim uses when you hit Tab in insert mode
set softtabstop=2

if exists('+colorcolumn')
  set colorcolumn=81
  highlight ColorColumn ctermbg=yellow
endif

" Run the Bash script by pressing F6 without leaving VIM.
map <f6> :w <CR>:!bash % <CR>
