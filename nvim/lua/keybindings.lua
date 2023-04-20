vim.g.mapleader = ' '

-- Disable arrow keys, We don't that around here !!
vim.keymap.set('n', '<up>', '<nop>')
vim.keymap.set('n', '<down>', '<nop>')
vim.keymap.set('i', '<up>', '<nop>')
vim.keymap.set('i', '<down>', '<nop>')
vim.keymap.set('i', '<left>', '<nop>')
vim.keymap.set('i', '<right>', '<nop>')

-- Save & Quit
vim.keymap.set('n', '<leader>w', ':w<cr>')
vim.keymap.set('n', '<leader>qq', ':q<cr>')
vim.keymap.set('n', '<leader>qf', ':q!<cr>')

-- Buffer
vim.keymap.set('n', '<leader>,', ':bp<cr>')
vim.keymap.set('n', '<leader>;', ':bn<cr>')
vim.keymap.set('n', '<leader>bk', ':bd<cr>')

--  Cool binding from ThePrimeagen to move highlighted text
vim.keymap.set('v', 'J', ':m \'>+1<CR>gv=gv')
vim.keymap.set('v', 'K', ':m \'<-2<CR>gv=gv')

-- Neat X clipboard integration
-- ,p will paste clipboard into buffer
-- ,c will copy entire buffer into clipboard
vim.keymap.set('n', '<leader>v', ':read !xsel --clipboard --output<cr>')
vim.keymap.set('n', '<leader>y', ':w !xsel -ib<cr><cr>')

-- Quick fix list
vim.keymap.set('n', '<leader>co', ':copen<cr>')
vim.keymap.set('n', '<leader>cc', ':cclose<cr>')
vim.keymap.set('n', '<C-n>', ':cnext<cr>')
vim.keymap.set('n', '<C-p>', ':cprev<cr>')

-- Centered search & Line concat
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')
vim.keymap.set('n', 'J', 'mzJ`Z')

-- Centered vertical move
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', '<C-d>', '<C-d>zz')

vim.keymap.set('n', '<leader>t', ':terminal<cr>')
vim.keymap.set('n', '<ESC>', '<C-\\><C-n>')

-- Replace word under cursor in file
vim.keymap.set( 'n', '<leader>r', ':%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>')
