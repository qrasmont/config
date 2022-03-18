USER = vim.fn.expand('$USER')

vim.o.number = true
vim.o.relativenumber = true
vim.o.showmode = false

vim.o.hidden = true


vim.o.autoindent = true
vim.o.smartindent = true

local undir = '/home/' .. USER .. '/.vimdid'
vim.o.undodir = undir
vim.o.undofile = true

vim.o.ruler = true
vim.o.showcmd = true
vim.o.mouse = 'a'
vim.o.colorcolumn = '80'
vim.o.wrap = false

vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true


vim.o.hlsearch = false
vim.o.incsearch = true

vim.o.scrolloff = 8
vim.o.signcolumn = 'yes'

vim.o.list = true
vim.o.listchars = 'tab:▸ ,trail:•,extends:→,precedes:←'

vim.o.inccommand = 'nosplit' -- live substitution
