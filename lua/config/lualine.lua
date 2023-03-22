local currentServer = require('config.current_server').currentServer

require("lualine").setup({
    options = {
        theme = "kanagawa",
        section_separators = {
            right = '\u{e0ba}',
            left = '\u{e0b8}',
        },
        component_separators = {
            right = '\u{e0bb}',
            left = '\u{e0b9}',
        }
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { currentServer, 'branch' },
        lualine_c = { 'diff' },
        lualine_x = { 'diagnostics' },
        lualine_y = { 'location' },
        lualine_z = { 'progress' }
    },
})
