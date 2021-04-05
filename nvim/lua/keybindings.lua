vim.g.mapleader = ' '

-- Disable arrow keys, We don't that around here !!
vim.api.nvim_set_keymap('n', '<up>', '<nop>', {})
vim.api.nvim_set_keymap('n', '<down>', '<nop>', {})
vim.api.nvim_set_keymap('i', '<up>', '<nop>', {})
vim.api.nvim_set_keymap('i', '<down>', '<nop>', {})
vim.api.nvim_set_keymap('i', '<left>', '<nop>', {})
vim.api.nvim_set_keymap('i', '<right>', '<nop>', {})

-- Save & Quit
vim.api.nvim_set_keymap('n', '<leader>w', ':w<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>qq', ':q<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>qf', ':q!<cr>', {})

-- Buffer
vim.api.nvim_set_keymap('n', '<leader>,', ':bp<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>;', ':bn<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>bk', ':bq<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>v', ':vsplit<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>h', ':split<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>s', ':<C-w><C-w>', {})

--  Cool binding from ThePrimeagen to move highlighted text
vim.api.nvim_set_keymap('v', 'J', ':m \'>+1<CR>gv=gv', {})
vim.api.nvim_set_keymap('v', 'K', ':m \'<-2<CR>gv=gv', {})

-- Neat X clipboard integration
-- ,p will paste clipboard into buffer
-- ,c will copy entire buffer into clipboard
vim.api.nvim_set_keymap('n', '<leader>p', ':read !xsel --clipboard --output<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>y', ':w !xsel -ib<cr><cr>', {})

-- Quick fix list
vim.api.nvim_set_keymap('n', '<leader>co', ':copen<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>cc', ':cclose<cr>', {})
vim.api.nvim_set_keymap('n', '<C-n>', ':cnext<cr>', {})
vim.api.nvim_set_keymap('n', '<C-p>', ':cprev<cr>', {})
