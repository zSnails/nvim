---@diagnostic disable-next-line: param-type-mismatch
pcall(vim.cmd, "packadd packer.nvim")

local installed, packer = pcall(require, 'packer')

if not installed then
    require('config.bootstrap').install()
    return
end

packer.startup(function(use)
    use 'wbthomason/packer.nvim'

    use 'savq/melange'
    use 'AlphaTechnolog/pywal.nvim'
    use 'folke/tokyonight.nvim'
    use 'sainnhe/gruvbox-material'
    use 'cocopon/iceberg.vim'
    use 'morhetz/gruvbox'
    use "rebelot/kanagawa.nvim"
    use 'bluz71/vim-nightfly-guicolors'

    -- syntaxes
    use 'dylon/vim-antlr'
    use 'elkowar/yuck.vim'
    use "aklt/plantuml-syntax"
    use 'alaviss/nim.nvim'
    use 'adelarsq/neofsharp.vim'
    use 'adalessa/laravel.nvim'
    use 'ARM9/arm-syntax-vim'

    use 'tjdevries/colorbuddy.vim'
    use 'bkegley/gloombuddy'
end)
