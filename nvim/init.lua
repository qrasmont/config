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


-- Load the utils functions used troughtout the config
require('config-utils')

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

-- Load gitsigns
require('gitsigns').setup()

-- Load zenline
require('zenline').setup()

-- Load harpoon
require('harpoon-config')

-- Load projectile
require('projectile-config')

-- Load fidget
require('fidget').setup{}

-- Load nvim-gps config
require("nvim-gps").setup()
