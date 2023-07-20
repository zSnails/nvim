local present, lualine = pcall(require, "lualine")

if not present then
    return
end

local current_server = require('config.current_server').current_server
-- NOTE: the only reason I'm not deleting this
-- file is because feline is archived, so it might stop
-- working forever. I might as well maintain it.

---@diagnostic disable-next-line: unused-function
local function evilMode()
    return ''
end

lualine.setup({
    options = {
        theme = "auto",
        section_separators = '',
        component_separators = '',
        -- section_separators = {
        --     right = '\u{e0ba}',
        --     left = '\u{e0b8}',
        -- },
        -- component_separators = {
        --     right = '\u{e0bb}',
        --     left = '\u{e0b9}',
        -- }

    },
    sections = {
        lualine_a = {},
        lualine_b = { current_server, 'branch' },
        lualine_c = { 'diff' },
        lualine_x = { 'diagnostics' },
        lualine_y = { 'location', 'progress' },
        lualine_z = {}
    },
})
