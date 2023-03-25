local installed, tree_sitter = pcall(require, 'nvim-treesitter.configs')

if not installed then
    return
end

tree_sitter.setup {
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

local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

parser_config.porth = {
    install_info = {
        url = "~/projects/tree-sitter-parsers/tree-sitter-porth",
        files = { "src/parser.c" },
    }
}
