require("nvim-treesitter.configs").setup {
    textobjects = {
        select = {
            enable = true,
            lookahead = true,

            keymaps = {
                ['af'] = '@function.outer',
                ['if'] = '@function.inner',
            }
        },
    },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = { 'org' },
    },

    ensure_installed = { 'org' },
}
