local M = {}

    M.add_file = function()
        require('harpoon.mark').add_file()
        print('Harpoon added', vim.fn.expand('%'))
    end

return M
