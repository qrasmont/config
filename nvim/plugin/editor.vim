" =============================================================================
" # Editor settings
" =============================================================================

" Rust format
let g:rustfmt_autosave = 1


" Ale linters fixers
let g:ale_linters = {'python': ['flake8']}
let g:ale_fixers = {'*': [], 'python': ['black', 'isort']}
let g:ale_fix_on_save = 1

" Support pytthon
let g:python3_host_prog = '/usr/bin/python3'

let g:rooter_patterns = ['.git']
