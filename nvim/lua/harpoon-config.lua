require("harpoon").setup({
    global_settings = {
        save_on_toggle = false,
        save_on_change = true,
    },
})


Map('n', '<leader>ha', '<cmd>lua require(\'quentin.harpoon\').add_file()<cr>', {})
Map('n', '<leader>hh', '<cmd>lua require(\'harpoon.ui\').toggle_quick_menu()<cr>', {})

Map('n', '<leader>&', '<cmd>lua require(\'harpoon.ui\').nav_file(1)<cr>', {})
Map('n', '<leader>é', '<cmd>lua require(\'harpoon.ui\').nav_file(2)<cr>', {})
Map('n', '<leader>"', '<cmd>lua require(\'harpoon.ui\').nav_file(3)<cr>', {})
Map('n', '<leader>\'', '<cmd>lua require(\'harpoon.ui\').nav_file(4)<cr>', {})
Map('n', '<leader>(', '<cmd>lua require(\'harpoon.ui\').nav_file(5)<cr>', {})
Map('n', '<leader>§', '<cmd>lua require(\'harpoon.ui\').nav_file(6)<cr>', {})
Map('n', '<leader>è', '<cmd>lua require(\'harpoon.ui\').nav_file(7)<cr>', {})
Map('n', '<leader>!', '<cmd>lua require(\'harpoon.ui\').nav_file(8)<cr>', {})
Map('n', '<leader>ç', '<cmd>lua require(\'harpoon.ui\').nav_file(9)<cr>', {})
