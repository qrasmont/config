--          _
--         /\ \
--        /  \ \
--       / /\ \ \
--      / / /\ \ \
--     / / /  \ \_\
--    / / / _ / / /
--   / / / /\ \/ /
--  / / /__\ \ \/
-- / / /____\ \ \
-- \/________\_\/


-- Load base settings
require('sets')

-- Load global keybindings
require('keybindings')

-- Load plugin list (packer)
require('plugins')

-- Load color settings
require('colors')

-- Load editor configuration
require('editor')

-- Load telescope config
require('telescope')

-- Load lsp config (c, lua)
require('lsp-config')

-- Load tree-sitter config
require('treesitter')

-- Load lua line config
require('lualine-config')
