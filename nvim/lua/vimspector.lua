vim.keymap.set('n', '<leader>dd', '<cmd>call vimspector#Launch()')
vim.keymap.set('n', '<leader>dr', '<cmd>call vimspector#Reset()')
vim.keymap.set('n', '<leader>db', '<cmd>call vimspector#ToggleBreakPoint()')

vim.keymap.set('n', '<leader>dl', '<Plug>VimspectorStepInto')
vim.keymap.set('n', '<leader>dj', '<Plug>VimspectorStepOver')
vim.keymap.set('n', '<leader>dk', '<Plug>VimspectorStepOut')
vim.keymap.set('n', '<leader>dc', '<cmd>call vimspector#Continue()')
