USER = vim.fn.expand('$USER')

Opt('w', 'number', true)
Opt('w', 'relativenumber', true)

Opt('o', 'hidden', true)

Opt('b', 'autoindent', true)
Opt('b', 'smartindent', true)

local undir = '/home/' .. USER .. '/.vimdid'
Opt('o', 'undodir', undir)
Opt('o', 'undofile', true)

Opt('o', 'ruler', true)
Opt('o', 'showcmd', true)
Opt('o', 'mouse', 'a')
Opt('w', 'colorcolumn', '80')
Opt('w', 'wrap', false)

Opt('b', 'tabstop', 4)
Opt('b', 'softtabstop', 4)
Opt('b', 'shiftwidth', 4)
Opt('b', 'expandtab', true)

Opt('o', 'hlsearch', false)
Opt('o', 'incsearch', true)

Opt('o', 'scrolloff', 8)
Opt('w', 'signcolumn', 'yes')

Opt('o', 'list', true)
Opt('o', 'listchars', 'eol:$,tab:>-,trail:~,extends:>,precedes:<')
