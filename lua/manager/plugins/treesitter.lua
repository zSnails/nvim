return {
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
        { 'nvim-treesitter/playground' },
        { 'nvim-treesitter/nvim-treesitter-textobjects' }
    },
    opts = {
        textobjects = {
            select = {
                enable = true,
                lookahead = true,
                keymaps = {
                    ['af'] = '@function.outer',
                    ['if'] = '@function.inner',
                    ['ac'] = '@class.outer',
                    ['ic'] = '@class.inner',
                    ['ak'] = '@parameter.outer',
                    ['ik'] = '@parameter.inner',
                    ['al'] = '@loop.outer',
                    ['il'] = '@loop.inner',
                }
            },
        },
        highlight = {
            enable = true,
        },
    }
}
