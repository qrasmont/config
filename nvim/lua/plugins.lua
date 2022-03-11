-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {'gruvbox-community/gruvbox'}

    use {'machakann/vim-highlightedyank'}

    use {'neovim/nvim-lspconfig'}

    use {'dense-analysis/ale'}
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    use {'nvim-lua/popup.nvim'}
    use {'nvim-lua/plenary.nvim'}

    -- Telescope
    use {'nvim-telescope/telescope.nvim',
        requires = {'kyazdani42/nvim-web-devicons'},
    }

    use {'jiangmiao/auto-pairs'}

    use {'tpope/vim-commentary'}
    use {'tpope/vim-fugitive'}

    use {'qrasmont/zenline.nvim'}

    use {'puremourning/vimspector'}

    use {
        'lewis6991/gitsigns.nvim',
        requires = {'nvim-lua/plenary.nvim'},
    }

    use {
        "hrsh7th/nvim-cmp",
        requires = {
            "hrsh7th/vim-vsnip",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-nvim-lua",
            "onsails/lspkind-nvim",
        }
    }

    use {'ThePrimeagen/harpoon'}

    use {'qrasmont/projectile.nvim'}

    use {'j-hui/fidget.nvim'}
end)
