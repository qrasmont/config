Map('n', '<leader>ff', '<cmd>lua require(\'telescope.builtin\').find_files()<cr>', {})
Map('n', '<leader>fg', '<cmd>lua require(\'telescope.builtin\').live_grep()<cr>', {})
Map('n', '<leader>bb', '<cmd>lua require(\'telescope.builtin\').buffers()<cr>', {})
Map('n', '<leader>fh', '<cmd>lua require(\'telescope.builtin\').help_tags()<cr>', {})

Map('n', '<leader>fn', '<cmd>lua require(\'quentin.telescope\').search_nvim()<cr>', {})
