USER = vim.fn.expand('$USER')

vim.o.number = true
vim.o.relativenumber = true
vim.o.showmode = false

vim.o.hidden = true

Opt('b', 'autoindent', true)
Opt('b', 'smartindent', true)

local undir = '/home/' .. USER .. '/.vimdid'
vim.o.undodir = undir
vim.o.undofile = true

vim.o.ruler = true
vim.o.showcmd = true
vim.o.mouse = 'a'
Opt('w', 'colorcolumn', '80')
Opt('w', 'wrap', false)

Opt('b', 'tabstop', 4)
Opt('b', 'softtabstop', 4)
Opt('b', 'shiftwidth', 4)
Opt('b', 'expandtab', true)


vim.o.hlsearch = false
vim.o.incsearch = true

vim.o.scrolloff = 8
Opt('w', 'signcolumn', 'yes')

vim.o.list = true
vim.o.listchars = 'eol:$,tab:>-,trail:~,extends:>,precedes:<'

vim.o.inccommand = 'nosplit' -- live substitution
