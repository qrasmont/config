vim.g.mapleader = ' '

-- Disable arrow keys, We don't that around here !!
Map('n', '<up>', '<nop>', {})
Map('n', '<down>', '<nop>', {})
Map('i', '<up>', '<nop>', {})
Map('i', '<down>', '<nop>', {})
Map('i', '<left>', '<nop>', {})
Map('i', '<right>', '<nop>', {})

-- Save & Quit
Map('n', '<leader>w', ':w<cr>', {})
Map('n', '<leader>qq', ':q<cr>', {})
Map('n', '<leader>qf', ':q!<cr>', {})

-- Buffer
Map('n', '<leader>,', ':bp<cr>', {})
Map('n', '<leader>;', ':bn<cr>', {})
Map('n', '<leader>bk', ':bd<cr>', {})
Map('n', '<leader>v', ':vsplit<cr>', {})
Map('n', '<leader>h', ':split<cr>', {})
Map('n', '<leader>s', ':<C-w><C-w>', {})

--  Cool binding from ThePrimeagen to move highlighted text
Map('v', 'J', ':m \'>+1<CR>gv=gv', {})
Map('v', 'K', ':m \'<-2<CR>gv=gv', {})

-- Neat X clipboard integration
-- ,p will paste clipboard into buffer
-- ,c will copy entire buffer into clipboard
Map('n', '<leader>p', ':read !xsel --clipboard --output<cr>', {})
Map('n', '<leader>y', ':w !xsel -ib<cr><cr>', {})

-- Quick fix list
Map('n', '<leader>co', ':copen<cr>', {})
Map('n', '<leader>cc', ':cclose<cr>', {})
Map('n', '<C-n>', ':cnext<cr>', {})
Map('n', '<C-p>', ':cprev<cr>', {})

-- Centered search & Line concat
Map('n', 'n', 'nzzzv', {})
Map('n', 'N', 'Nzzzv', {})
Map('n', 'J', 'mzJ`Z', {})
