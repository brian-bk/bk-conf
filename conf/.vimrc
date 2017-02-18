" be iMproved, required for Vundle
set nocompatible

""""" ADDITIONAL FILETYPES
autocmd BufNewFile,BufReadPost *.conf set filetype=conf
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

""""" VUNDLE
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'valloric/MatchTagAlways'

Plugin 'klen/python-mode'

call vundle#end()
filetype plugin indent on


"""""""""""""""""""" CONFIGURATION
" Color scheme
"set t_Co=256

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
noremap <Space> <PageDown>
noremap - <PageUp>

"
"""""" DEFAULT CONFIGS
"    " Hitting tab will actually be a tab
"    setlocal noexpandtab 
"    " How many columns a tab counts for
"    setlocal tabstop=4
"    " How many columns text is indented with reindent operations
"    setlocal shiftwidth=4
"    " How many columns vim uses when you hit Tab in insert mode
"    setlocal softtabstop=4
"    " Round indent to multiple of 'shiftwidth'
"    set shiftround    
"    " Be smart when using tabs
"    set smarttab
"    " Smart indent
"    set si
"    " Lines longer than 79 columns will be broken
"    set textwidth=79
"    " Align the new line indent with the previous line
"    set autoindent
"
"""""" SETTINGS for languages without full language files
"autocmd Filetype c setlocal noexpandtab tabstop=8 shiftwidth=8 softtabstop=8
"autocmd Filetype java setlocal expandtab softtabstop=4 shiftwidth=4
"autocmd Filetype html setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
"autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
"autocmd Filetype xhtml setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
"autocmd Filetype jsp setlocal noexpandtab tabstop=2 shiftwidth=2 softtabstop=2
"autocmd Filetype conf setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
"autocmd Filetype markdown setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
"autocmd Filetype yaml setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
