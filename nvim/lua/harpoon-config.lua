require("harpoon").setup({
    global_settings = {
        save_on_toggle = false,
        save_on_change = true,
    },
})


vim.keymap.set('n', '<leader>ha', function() return require('quentin.harpoon').add_file() end)
vim.keymap.set('n', '<leader>hh', function() return require('harpoon.ui').toggle_quick_menu() end)

vim.keymap.set('n', '<leader>&', function() return require('harpoon.ui').nav_file(1) end)
vim.keymap.set('n', '<leader>é', function() return require('harpoon.ui').nav_file(2) end)
vim.keymap.set('n', '<leader>"', function() return require('harpoon.ui').nav_file(3) end)
vim.keymap.set('n', '<leader>\'', function() return require('harpoon.ui').nav_file(4) end)
vim.keymap.set('n', '<leader>(', function() return require('harpoon.ui').nav_file(5) end)
vim.keymap.set('n', '<leader>§', function() return require('harpoon.ui').nav_file(6) end)
vim.keymap.set('n', '<leader>è', function() return require('harpoon.ui').nav_file(7) end)
vim.keymap.set('n', '<leader>!', function() return require('harpoon.ui').nav_file(8) end)
vim.keymap.set('n', '<leader>ç', function() return require('harpoon.ui').nav_file(9) end)
