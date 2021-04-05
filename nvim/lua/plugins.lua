-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {'morhetz/gruvbox'}
    use {'itchyny/lightline.vim'}
    use {'machakann/vim-highlightedyank'}

    use {'neovim/nvim-lspconfig'}
    use {'nvim-lua/completion-nvim'}

    use {'dense-analysis/ale'}
    use {'ap/vim-buftabline'}
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    -- Telescope
    use {'nvim-lua/popup.nvim'}
    use {'nvim-lua/plenary.nvim'}
    use {'nvim-telescope/telescope.nvim'}

    use {'mhinz/vim-startify'}
end)
