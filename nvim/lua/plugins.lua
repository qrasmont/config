local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

return require('lazy').setup({
    'gruvbox-community/gruvbox',
    'folke/tokyonight.nvim',

    'machakann/vim-highlightedyank',

    'neovim/nvim-lspconfig',

    'dense-analysis/ale',
    {
        'nvim-treesitter/nvim-treesitter',
        build = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    },


    'nvim-lua/popup.nvim',
    'nvim-lua/plenary.nvim',

    -- Telescope
    {'nvim-telescope/telescope.nvim',
        dependencies = {'kyazdani42/nvim-web-devicons'},
    },

    'jiangmiao/auto-pairs',

    'tpope/vim-commentary',
    'tpope/vim-fugitive',

    {
        "SmiteshP/nvim-navic",
        dependencies = "neovim/nvim-lspconfig"
    },

    'qrasmont/zenline.nvim',

    'puremourning/vimspector',

    {
        'lewis6991/gitsigns.nvim',
        dependencies = {'nvim-lua/plenary.nvim'},
    },

    {
        "hrsh7th/nvim-cmp",
       dependencies = {
            "hrsh7th/vim-vsnip",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-nvim-lua",
            "onsails/lspkind-nvim",
        }
    },

    'ThePrimeagen/harpoon',

    'qrasmont/projectile.nvim',

    'j-hui/fidget.nvim',
})
