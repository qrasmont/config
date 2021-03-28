" =============================================================================
" # Startify settings
" =============================================================================
highlight StartifyHeader ctermfg=214 guifg=#ffaf00

let g:ascii = [
        \ '    _____   ______    ____      ____  ____      ______  _______   ',
        \ '   |\    \ |\     \  |    |    |    ||    |    |      \/       \  ',
        \ '    \\    \| \     \ |    |    |    ||    |   /          /\     \ ',
        \ '     \|    \  \     ||    |    |    ||    |  /     /\   / /\     |',
        \ '      |     \  |    ||    |    |    ||    | /     /\ \_/ / /    /|',
        \ '      |      \ |    ||    |    |    ||    ||     |  \|_|/ /    / |',
        \ '      |    |\ \|    ||\    \  /    /||    ||     |       |    |  |',
        \ '      |____||\_____/|| \ ___\/___ / ||____||\____\       |____|  /',
        \ '      |    |/ \|   || \ |   ||   | / |    || |    |      |    | / ',
        \ '      |____|   |___|/  \|___||___|/  |____| \|____|      |____|/  ',
        \ '                                                                  ',
        \ ]
let g:startify_custom_header = g:ascii

let g:startify_bookmarks = [
            \ {'a': '~/.config/alacritty/alacritty.yml'},
            \ {'h': '~/.zsh_history'},
            \ {'n': '~/.config/nvim/init.vim'},
            \ {'p': '~/.config/nvim/plugin'},
            \ {'t': '~/.tmux.conf'},
            \ {'z': '~/.zshrc'},
            \ ]
let g:startify_lists = [
            \ { 'type': 'files',     'header': ['   Recent']         },
            \ { 'type': 'dir',       'header': ['   Current dir '. getcwd()] },
            \ { 'type': 'bookmarks', 'header': ['   Config']      },
            \ ]
