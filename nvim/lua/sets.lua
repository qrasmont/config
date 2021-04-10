USER = vim.fn.expand('$USER')

vim.wo.number = true
vim.wo.relativenumber = true

vim.o.hidden = true

vim.bo.autoindent = true
vim.bo.smartindent = true

vim.o.undodir = 'home/' .. USER .. '/.vimdid'
vim.o.undofile = true

vim.o.ruler = true
vim.o.showcmd = true
vim.o.mouse = 'a'
vim.wo.colorcolumn = '80'
vim.wo.wrap = false

vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.bo.tabstop = 4
vim.bo.softtabstop = 4
vim.bo.shiftwidth = 4
vim.bo.expandtab = true

vim.o.hlsearch = false
vim.o.incsearch = true

vim.o.scrolloff = 8
vim.wo.signcolumn = 'yes'

vim.o.list = true
vim.o.listchars ='eol:$,tab:>-,trail:~,extends:>,precedes:<'
