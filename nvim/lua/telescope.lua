vim.keymap.set('n', '<leader>ff', function() return require('telescope.builtin').find_files() end)
vim.keymap.set('n', '<leader>fg', function() return require('telescope.builtin').live_grep() end)
vim.keymap.set('n', '<leader>fh', function() return require('telescope.builtin').help_tags() end)
vim.keymap.set('n', '<leader>fs', function() return require('telescope.builtin').grep_string() end)

vim.keymap.set('n', '<leader>bb', function() return require('quentin.telescope').buffers() end)
vim.keymap.set('n', '<leader>fb', function() return require('quentin.telescope').current_buffer_fuzzy_find() end)
vim.keymap.set('n', '<leader>fd', function() return require('quentin.telescope').file_browser() end)
vim.keymap.set('n', '<leader>fn', function() return require('quentin.telescope').search_nvim() end)
vim.keymap.set('v', '<leader>fs', function() return require('quentin.telescope').grep_selection() end)

