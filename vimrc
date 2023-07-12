"""""""""""""""""""""""""""""""""
" Vimrc file                    "
"                               "
"                               "
"                               "
"Chekko                         "
"""""""""""""""""""""""""""""""""

" -------Basic config stuff {
" Set leader key to spacebar
nnoremap <SPACE> <Nop>
let mapleader="\<Space>"
" Enter vim no vi
set nocompatible
" Enable auto completion menu after pressing TAB
set wildmenu
set path+=**
" Syntax highlighting
syntax enable 
" Number lines
set number relativenumber
" Set tabs.
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
" Use space characters instead of tabs.
set expandtab
" gets rid of swap files
set noswapfile
" Scroll down all the way down 
set scrolloff=8
" Show a visual line under the cursor's current line
set cursorline 
:highlight Cursorline  ctermbg=black
" keep buffer
set hidden 
" get rid of error bells
set noerrorbells
" scroll when 8 lines from top/bottom screen
set scrolloff=8
" extra column
set signcolumn=yes
" tmux color compatibility
set term=screen-256color
" set visualbell off 
set visualbell
" Copy and pasting
noremap <Leader>yy "*yy
noremap <Leader>y "*y
noremap <Leader>p "*p
" VIM stop writing comments for me
set paste
" }

" ------Python Set Up{
" Indent functionality
set autoindent
set smartindent
" Show the matching part of the pair for [] {} and ()
set showmatch
" Enable all Python syntax highlighting features
let python_highlight_all = 1
" }

" ------Search {
" Highlights searches
set hlsearch
" Ignore case in searches
set ignorecase
set smartcase
" While searching though a file incrementally highlight matching characters as you type.
set incsearch
" Search does not stay highlighted why esc is typed twice
nnoremap <esc><esc> :noh<return>
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
let g:netrw_liststyle = 3
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

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

" -------Cursor settings {
:hi TabLineFill ctermfg=Black
:hi TabLine ctermfg=Green
"  }


" -------Text writing {
" Spell check
"set spell spelllang=en_us
"  }


" -------Plugins{
call plug#begin()
  Plug 'preservim/nerdtree'
  Plug 'gruvbox-community/gruvbox'
  Plug 'francoiscabrol/ranger.vim'

  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
call plug#end()

"  }
" Powerline
let g:airline#extensions#tabline#enabled = 1
" ColorSchemes 
colorscheme desert
colorscheme gruvbox 
" -------NERDtree{
" enable line numbers
let NERDTreeShowLineNumbers=1
" make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber""
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
"  }

