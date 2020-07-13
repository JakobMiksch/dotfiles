" Line Numbers
set number
set relativenumber
set ruler

" Whitespace
set tabstop     =4
" set softtabstop =4 "recommended but not sure what this does
set shiftwidth  =4
set expandtab

" Syntax Highlighting
syntax on

" No files flying around
" from https://stackoverflow.com/a/15317146

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

" Search
set ignorecase
set smartcase
" immediately jumps to hit
set incsearch
" highlights results
set hlsearch

set autoindent
set linebreak

" set nojoinspaces


" Highlight selected word occurences
set hlsearch

" autoread and autowrite
" from http://albertomiorin.com/blog/2012/12/10/autoread-and-autowrite-in-vim/
augroup save
  au!
  au FocusLost * wall
augroup END

set autoread
set autowrite
set autowriteall

" avoids moving outside of VIM while using scroll wheel
set mouse=a

" show whitespace
" from https://stackoverflow.com/a/1675752
set listchars=tab:>-,trail:▣,extends:>,precedes:<,space:·
set list
highlight SpecialKey ctermfg=grey guifg=grey70
" indicates active line
set cursorline
" cursor lines - helps with indentation
" set cursorcolumn



