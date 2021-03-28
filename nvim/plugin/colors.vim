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
