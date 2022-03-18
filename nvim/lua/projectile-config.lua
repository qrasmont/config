require('projectile').setup{
    output_behavior = 'notify',
    notifier = {
        wait = {
            wait_text = 'Projectile',
            rate = 1000,
        },
        done = {
            success_symbol = '✔',
            success_text = 'Success',
            fail_symbol = '✖',
            fail_text = 'Fail',
            delay = 3000,
        },
        loader = {
            "🌑 ",
            "🌒 ",
            "🌓 ",
            "🌔 ",
            "🌕 ",
            "🌖 ",
            "🌗 ",
            "🌘 ",
        }
    }
}

vim.cmd([[highlight NotifierText guifg=#fe8019]])
vim.cmd([[highlight NotifierSuccess guifg=#b8bb26]])
vim.cmd([[highlight NotifierFail guifg=#fb4934]])

Map('n', '<leader>pp', '<cmd>lua require(\'projectile\').run()<cr>', {})
Map('n', '<leader>po', '<cmd>lua require(\'projectile\').toggle_output()<cr>', {})
