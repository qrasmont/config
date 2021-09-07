Map('n', '<leader>ff', '<cmd>lua require(\'telescope.builtin\').find_files()<cr>', {})
Map('n', '<leader>fg', '<cmd>lua require(\'telescope.builtin\').live_grep()<cr>', {})
Map('n', '<leader>fh', '<cmd>lua require(\'telescope.builtin\').help_tags()<cr>', {})
Map('n', '<leader>fs', '<cmd>lua require(\'telescope.builtin\').grep_string()<cr>', {})

Map('n', '<leader>bb', '<cmd>lua require(\'quentin.telescope\').buffers()<cr>', {})
Map('n', '<leader>fb', '<cmd>lua require(\'quentin.telescope\').current_buffer_fuzzy_find()<cr>', {})
Map('n', '<leader>fd', '<cmd>lua require(\'quentin.telescope\').file_browser()<cr>', {})
Map('n', '<leader>fn', '<cmd>lua require(\'quentin.telescope\').search_nvim()<cr>', {})
Map('v', '<leader>fs', '<cmd>lua require(\'quentin.telescope\').grep_selection()<cr>', {})

