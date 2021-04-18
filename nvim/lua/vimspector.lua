Map('n', '<leader>dd', '<cmd>call vimspector#Launch()', {})
Map('n', '<leader>dr', '<cmd>call vimspector#Reset()', {})
Map('n', '<leader>db', '<cmd>call vimspector#ToggleBreakPoint()', {})

Map('n', '<leader>dl', '<Plug>VimspectorStepInto', {})
Map('n', '<leader>dj', '<Plug>VimspectorStepOver', {})
Map('n', '<leader>dk', '<Plug>VimspectorStepOut', {})
Map('n', '<leader>dc', '<cmd>call vimspector#Continue()', {})
