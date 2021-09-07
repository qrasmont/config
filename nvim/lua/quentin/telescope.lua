local M = {} -- Local table

    -- Search files in my nvim config
    M.search_nvim = function()
        require('telescope.builtin').find_files({
            prompt_title = 'Nvim config',
            cwd = '~/dev/personal/dot_config/nvim/',
        })
    end

    -- Search selected text in visual mode
    M.grep_selection = function()
        -- Get the selection trought the 'v' register
        vim.cmd('noau normal! "vy"')
        local string = vim.fn.getreg('v')

        require('telescope.builtin').grep_string({
            prompt_title = 'Search selection',
            search = string,
        })
    end

    -- Customise builtin file browser
    M.file_browser = function()
        local layout_conf = {
            prompt_position = 'top'
        }

        require('telescope.builtin').file_browser({
            previewer = false,
            layout_config = layout_conf,
        })
    end


    -- Customise builtin buffer fuzzy find
    M.current_buffer_fuzzy_find = function()
        local layout_conf = {
            prompt_position = 'top',
        }

        require('telescope.builtin').current_buffer_fuzzy_find({
            previewer = false,
            layout_config = layout_conf,
            sorting_strategy = 'ascending'
        })
    end

    -- Customise builtin buffers
    M.buffers = function()
        local layout_conf = {
            prompt_position = 'top',
        }

        require('telescope.builtin').buffers({
            previewer = false,
            layout_config = layout_conf,
        })
    end

return M -- Return the table == exports the functions
