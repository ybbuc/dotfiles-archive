return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'lewis6991/impatient.nvim'
    use 'nathom/filetype.nvim'
    use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
    use 'williamboman/nvim-lsp-installer'
    use {'ms-jpq/coq_nvim', run = 'python3 -m coq deps'}
    use 'ms-jpq/coq.artifacts'
    use 'ms-jpq/coq.thirdparty'
    use 'lukas-reineke/indent-blankline.nvim'
    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'nvim-treesitter/nvim-treesitter'
    use 'p00f/nvim-ts-rainbow'  -- Rainbow parentheses
    use 'nvim-telescope/telescope-file-browser.nvim'  -- File browser extension for telescope.nvim
    use 'nvim-telescope/telescope-symbols.nvim'       -- Symbol browser extension for telescope.nvim
    use 'nvim-telescope/telescope-project.nvim'       -- Project browser extension for telescope.nvim
    use 'nvim-telescope/telescope-fzf-native.nvim'    -- FZF sorter extension for telescope.nvim
    use 'romgrk/barbar.nvim'
    use 'nvim-lualine/lualine.nvim'  -- statusline
    use 'arkav/lualine-lsp-progress'  -- See progress of LSP servers initializing
    use 'mfussenegger/nvim-lint' -- linting
    use 'folke/trouble.nvim'
    use 'lewis6991/gitsigns.nvim'
    use 'max397574/better-escape.nvim'
    use {'norcalli/nvim-colorizer.lua', as = 'colorizer'}
    use {'catppuccin/nvim', as = 'catppuccin'}
    use 'numToStr/Comment.nvim'
    use 'mbbill/undotree'
    use 'tpope/vim-repeat'
    use 'tpope/vim-surround'
    use 'matze/vim-move'
    use 'ludovicchabant/vim-gutentags'
    use 'lervag/vimtex'
    use {
      'phaazon/hop.nvim',
        branch = 'v2',
        config = function()
        require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
      end
    }
    use 'L3MON4D3/LuaSnip'
    use 'folke/which-key.nvim'
end)
