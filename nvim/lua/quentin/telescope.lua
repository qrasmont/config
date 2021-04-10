local M = {}
    M.search_nvim = function()
        require('telescope.builtin').find_files({
            prompt_title = 'Nvim config',
            cwd = '~/dev/personal/dot_config/nvim/',
        })
    end
return M
