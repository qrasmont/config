" =============================================================================
" # MISC
" =============================================================================
" COC Completion
" Better display for messages
set cmdheight=2
set updatetime=300 "default 4000.

set autoindent
set smartindent

" Permanent undo
set undodir=~/.vimdid
set undofile

set hidden

" =============================================================================
" # GUI settings
" =============================================================================
set number "Show current line number
set relativenumber "Show line number relative to current
set ruler "Show the ruler
set showcmd "Show commands in status line
set mouse=a "Enable mouse usage
set colorcolumn=80 " Show column limit
set nowrap " Don't wrap lines that don't fit the screen
set tabstop=4 " Nbr of spaces a tabs will take
set softtabstop=4
set shiftwidth=4
set expandtab
set nohlsearch " Don't keep the highlight when search is over
set incsearch " Incrementaly highlight as you type
set scrolloff=8 " Start scrolling 8 lines before end of screen
set signcolumn=yes " Add an extra column on the left for linters,etc

" Show tabs, spaces and end of line
set list
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
