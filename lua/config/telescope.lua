local telescope_builtins = require('telescope.builtin')

require('telescope').setup {
    pickers = {
        find_files = {
            theme = "dropdown",
        },
        live_grep = {
            theme = "dropdown",
        },
        buffers = {
            theme = "dropdown",
        },
        help_tags = {
            theme = "dropdown",
        },
        treesitter = {
            theme = "cursor",
        },
    }
}
