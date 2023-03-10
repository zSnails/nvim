local plugins = {}

vim.cmd [[ packadd packer.nvim ]]

local packer = require('packer')

packer.startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'ryanoasis/vim-devicons'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use 'savq/melange'

    use 'preservim/nerdtree'
    -- TODO: check if they've updated the plugin and fixed
    -- the invalid characters in group names
    -- use 'tiagofumo/vim-nerdtree-syntax-highlight'
    use 'johnstef99/vim-nerdtree-syntax-highlight'

    use 'puremourning/vimspector'

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

    -- doki themes
    use 'doki-theme/doki-theme-vim'

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

    -- use 'alaviss/nim.nvim'
    use 'tjdevries/colorbuddy.vim'
    use 'bkegley/gloombuddy'

    use 'ggandor/leap.nvim'

    use 'windwp/nvim-autopairs'

    -- neorg config
    use {
        'nvim-neorg/neorg',
        -- ft = "norg",
        requires = 'nvim-lua/plenary.nvim',
        -- run = ":Neorg sync-parsers",
        -- config = function()
        --     require('neorg').setup {
        --         load = {
        --             ["core.defaults"] = {},
        --             ["core.neorg.concealer"] = {},
        --             ["core.neorg.dirman"] = {
        --                 config = {
        --                     workspaces = {
        --                         notes = "~/projects/notes/notes",
        --                     },
        --                 }
        --             },
        --         },
        --     }
        -- end,
    }
end)


return plugins
