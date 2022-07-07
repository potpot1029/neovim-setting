vim.cmd [[
    augroup packer_user_config
        autocmd!
	autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

return require('packer').startup(function()
    -- Package manager 
    use 'wbthomason/packer.nvim'

    -- Collection of configurations for the built-in LSP client
    use 'neovim/nvim-lspconfig'             
    use 'williamboman/nvim-lsp-installer'

    -- Snippet
    use "L3MON4D3/LuaSnip" --snippet engine

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- colorscheme
    -- use 'luisiacc/gruvbox-baby'                               
    -- use 'eddyekofo94/gruvbox-flat.nvim'
    use 'sainnhe/gruvbox-material'
    -- use 'marko-cerovac/material.nvim'

    -- color
    use 'norcalli/nvim-colorizer.lua'

    -- completion 
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'

    -- treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- tabline
    use {
        'akinsho/bufferline.nvim',
        tag = "v2.*",
        requires = 'kyazdani42/nvim-web-devicons'
    }

    -- statusline
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'lyazdani42/nvim-web-devicons', opt = true}
    }

    -- file explorer
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons',
        },
        tag = 'nightly'
    }
    
    -- comment
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    -- which-key
    use {
        "folke/which-key.nvim",
        config = function()
        require("which-key").setup {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    end
    }

    -- Toggleterm
    use {"akinsho/toggleterm.nvim", tag = 'v1.*', config = function()
        require("toggleterm").setup()
    end}

    -- Indent Guide
    use 'lukas-reineke/indent-blankline.nvim'

    -- Competitive Programming
    use {
        'xeluxee/competitest.nvim',
        requires = 'MunifTanjim/nui.nvim',
        config = function() require'competitest'.setup() end
    }


    -- Debugger
    use 'mfussenegger/nvim-dap'

    -- Autopair
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    } 
end)

