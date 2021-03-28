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

Plug 'mhinz/vim-startify'

Plug 'edluffy/specs.nvim', {'branch': 'main'}
call plug#end()

" =============================================================================
" # Keyboard shortcuts
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

" Cool binding from ThePrimeagen to move highlighted text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Neat X clipboard integration
" ,p will paste clipboard into buffer
" ,c will copy entire buffer into clipboard
noremap <leader>p :read !xsel --clipboard --output<cr>
noremap <leader>y :w !xsel -ib<cr><cr>

