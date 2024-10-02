" be iMproved, required for Vundle
set nocompatible

""""" ADDITIONAL FILETYPES
autocmd BufNewFile,BufReadPost *.conf set filetype=conf
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd BufNewFile,BufReadPost *.sh set filetype=bash

filetype plugin indent on

"""""""""""""""""""" CONFIGURATION
" Turn on syntax highlighting
syntax enable
 " Always show current postion
set ruler
" Don't wrap lines
set nowrap
" Highlight all occurances of a search
set hlsearch
" Numbering
" Line numbering
set number
"By pressing Ctrl+N twice, toggle between numbers and nonu
nmap <C-N><C-N> :set invnumber<CR>
"Set linenumbering color and background
highlight LineNr ctermbg=LightGrey
highlight LineNr ctermfg=DarkBlue
" Title
set title titlestring=%y:\ %f titlelen=120
" Remove thanks for flying vim
let &titleold="Terminal"

"
set encoding=utf8
" Buffer can be hidden without first writing to file

"""""" MENUS
set hidden
" Show auto complete menus.
set wildmenu
" Make wildmenu behave like bash completion. Finding commands are
" so easy now.
set wildmode=list:longest

""""" SEARCH
" When searching be smart about cases
set ignorecase
set smartcase
set incsearch
"    " Pressing ,ss will toggle and untoggle spell checking
"    map <leader>ss :setlocal spell!<cr>

"""""" NAVIGATION
" Allow scrolling with mouse
set mouse=a
" Keep cursor in the middle of the screen while scrolling up and
" down.
" Soft line jumps instead of hard ones for j and k
noremap j gj
noremap k gk
noremap <Up> g<Up>
noremap <Down> g<Down>
" Set character wrapping for l and h
set whichwrap+=h,l
" Page Down for spacebar and Up for -

nnoremap J <PageDown>
nnoremap K <PageUp>

set clipboard=unnamed

set laststatus=2

set foldmethod=indent
set foldlevel=99

"""""" DEFAULT CONFIGS
"    " Hitting tab will be spaces
    setlocal expandtab 
"    " How many columns a tab counts for
    setlocal tabstop=8
"    " How many columns text is indented with reindent operations
    setlocal shiftwidth=4 smarttab
"    " How many columns vim uses when you hit Tab in insert mode
    setlocal softtabstop=8
"    " Round indent to multiple of 'shiftwidth'
    set shiftround    
"    " Be smart when using tabs
    set smarttab
"    " Smart indent
    set si
"    " Lines longer than 119 columns will be broken
    set textwidth=119
"    " Align the new line indent with the previous line
    set autoindent

