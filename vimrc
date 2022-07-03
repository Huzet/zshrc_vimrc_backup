"""""""""""""""""""""""""""""""""
" Vimrc file                    "
"                               "
"                               "
"                               "
"                               "
"Chekko                         "
"""""""""""""""""""""""""""""""""

" -------Basic config stuff {
" Enter vim no vi
set nocompatible
" Allows tab completion for all files
set path+=**
" Enable auto completion menu after pressing TAB
set wildmenu
" Syntax highlighting
syntax enable 
" Number lines
set number relativenumber
" Set tab width to 4 columns.
set tabstop=4
" Use space characters instead of tabs.
set expandtab
" gets rid of swap files
set noswapfile
" Scroll down all the way down 
set scrolloff=8
" Show a visual line under the cursor's current line
set cursorline
" }

" ------Python Set Up{
" Tabs are 4 spaces
set ts=4
" Indent functionality
set autoindent
set smartindent
set smarttab
" When using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4
" Show the matching part of the pair for [] {} and ()
set showmatch
" Enable all Python syntax highlighting features
" let python_highlight_all = 1
" Auto complete 
inoremap { {}<Esc>ha
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha
" }

" ------Search {
" Highlights searches
set hlsearch
" Ignore case in searches
set ignorecase
" While searching though a file incrementally highlight matching characters as you type.
set incsearch
" Search does not stay highlighted
set hlsearch
" }


" ------Ruler {
"shows command as I type it
set showcmd 
" gives line information at bottomuu
set ruler 
" Show the mode you are on the last line.
set showmode
" }

" -----Status Bar {
" Clear status line when vimrc is reloaded.
set statusline=
" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R
" Use a divider to separate the left side from the right side.
set statusline+=%=
" Status line right side.
set statusline+=\row:\ %l\ col:\ %c\ percent:\ %p%%
" Show the status on the second to last line.
set laststatus=2
" }

" ------Mouse {
" allows mouse clicks
set mouse=a
" }

"-------netrw file browser" {
filetype plugin on
" give tree
let g:netrw_liststyle=3 "tree view
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

" keep directory whily browsing
let g:netrw_keepdir = 0
" }

"-------Cursor settings {
"Mode Settings

let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

"Cursor settings:

"  1 -> blinking block
"  2 -> solid block 
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar
"  }

