-- vim.cmd [[ packadd packer.nvim ]]

pcall(vim.cmd, "packadd packer.nvim")

local installed, packer = pcall(require, 'packer')

if not installed then
    require('config.bootstrap').install()
end

packer.startup(function(use)
    use 'wbthomason/packer.nvim'

    use 'adelarsq/neofsharp.vim'

    use {
        'nvim-tree/nvim-web-devicons',
        tag = 'nerd-v2-compat'
    }

    use {
        'romgrk/barbar.nvim',
        requires = { 'nvim-tree/nvim-web-devicons' },
    }

    use {
        'nvim-tree/nvim-tree.lua',
        requires = { 'nvim-tree/nvim-web-devicons' },
    }

    use 'zSnails/cityscape.nvim'

    use 'freddiehaddad/feline.nvim'


    use 'savq/melange'

    use 'andweeb/presence.nvim'

    use 'neovim/nvim-lspconfig'
    use 'tpope/vim-commentary'

    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'

    -- pywal theme
    use 'dylanaraps/wal.vim'

    -- tokyo night theme
    use 'folke/tokyonight.nvim'

    -- gruvbox material theme
    use 'sainnhe/gruvbox-material'

    -- iceberg theme
    use 'cocopon/iceberg.vim'

    -- gruvbox theme
    use 'morhetz/gruvbox'

    -- kanagawa theme
    use "rebelot/kanagawa.nvim"

    -- nightfly theme
    use 'bluz71/vim-nightfly-guicolors'

    -- hex colors
    use 'chrisbra/Colorizer'
    use 'dylon/vim-antlr'

    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use 'nvim-treesitter/nvim-treesitter'
    use 'nvim-treesitter/playground'
    use 'nvim-treesitter/nvim-treesitter-textobjects'

    -- yuck support
    use 'elkowar/yuck.vim'

    -- plantuml
    use "aklt/plantuml-syntax"
    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim"
    }

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use 'lewis6991/gitsigns.nvim'

    use 'tjdevries/colorbuddy.vim'
    use 'bkegley/gloombuddy'

    use 'windwp/nvim-autopairs'

    -- neorg config
    use {
        'nvim-neorg/neorg',
        requires = 'nvim-lua/plenary.nvim',
    }
end)
