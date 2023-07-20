local installed, telescope = pcall(require, 'telescope')

if not installed then
    return
end

function table.copy(t)
    local u = {}
    for k, v in pairs(t) do
        u[k] = v
    end

    return setmetatable(u, getmetatable(t))
end

local default_config = {
    theme = "ivy",
    previewer = false,
    layout_config = {
        bottom_pane = { height = 12 }
    },
}

local live_grep_config = table.copy(default_config)
live_grep_config["initial_mode"] = "insert"

telescope.setup {
    pickers = {
        find_files = default_config,
        live_grep = live_grep_config,
        buffers = default_config,
        help_tags = default_config,
        treesitter = {
            theme = "cursor",
        },
        diagnostics = default_config,
    }
}
