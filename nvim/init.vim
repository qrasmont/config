" =============================================================================
" # PLUGINS
" =============================================================================
call plug#begin()

Plug 'itchyny/lightline.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'airblade/vim-rooter'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rust-lang/rust.vim'

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'dense-analysis/ale'
Plug 'ap/vim-buftabline'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
call plug#end()

" COC Completion
" Better display for messages
set cmdheight=2
" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" Use <c-.> to trigger completion.
inoremap <silent><expr> <c-.> coc#refresh()
" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" =============================================================================
" # Colors
" =============================================================================

" Enable true colors (24 bit)
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" Set the color theme
syntax on
colorscheme onehalfdark
let g:lightline = { 'colorscheme': 'onehalfdark' }

highlight Pmenu ctermbg=black guibg=black
highlight Pmenu ctermfg=white guifg=white
" =============================================================================
" # Editor settings
" =============================================================================

" Rust format
let g:rustfmt_autosave = 1

set autoindent
set smartindent
" Permanent undo
set undodir=~/.vimdid
set undofile

set hidden

" Ale linters fixers
let g:ale_linters = {'python': ['flake8']}
let g:ale_fixers = {'*': [], 'python': ['black', 'isort']}
let g:ale_fix_on_save = 1

" Support pytthon
let g:python3_host_prog = '/usr/bin/python3'
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
set nohlsearch " Don't keep the highlight when search is over
set incsearch " Incrementaly highlight as you type
set scrolloff=8 " Start scrolling 8 lines before end of screen
set signcolumn=yes " Add an extra column on the left for linters,etc

" Tabs, spaces and end of line
set list
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
" =============================================================================
" " # Keyboard shortcuts
" "
" =============================================================================

" Set leader key to SPC
let mapleader=" "

" No arrow keys --- force yourself to use the home row
nnoremap <up> <nop>
nnoremap <down> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" save & quit keybindings
noremap <leader>w :w<cr>
noremap <leader>qq :q<cr>
noremap <leader>qf :q!<cr>

" Buffer keybindings
noremap <leader>, :bp<cr>
noremap <leader>; :bn<cr>
noremap <leader>bk :bd<cr>
noremap <leader>v :vsplit<cr>
noremap <leader>h :split<cr>
nnoremap <Leader>s <C-w><C-w>

nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" Cool binding from ThePrimeagen to move highlighted text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Neat X clipboard integration
" ,p will paste clipboard into buffer
" ,c will copy entire buffer into clipboard
noremap <leader>p :read !xsel --clipboard --output<cr>
noremap <leader>y :w !xsel -ib<cr><cr>

" 'Smart' nevigation
nmap <leader> cp <Plug>(coc-diagnostic-prev)
nmap <leader> cn <Plug>(coc-diagnostic-next)
nmap <leader> cd <Plug>(coc-definition)
nmap <leader> cy <Plug>(coc-type-definition)
nmap <leader> ci <Plug>(coc-implementation)
nmap <leader> cr <Plug>(coc-references)
" Use K to show documentation in preview window
nnoremap <silent> H :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
