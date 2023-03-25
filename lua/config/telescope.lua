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

local defaultConfig = {
    theme = "ivy",
    previewer = false,
    layout_config = {
        bottom_pane = { height = 12 }
    },
}

local liveGrepConfig = table.copy(defaultConfig)
liveGrepConfig["initial_mode"] = "insert"

telescope.setup {
    pickers = {
        find_files = defaultConfig,
        live_grep = liveGrepConfig,
        buffers = defaultConfig,
        help_tags = defaultConfig,
        treesitter = {
            theme = "cursor",
        },
        diagnostics = defaultConfig,
    }
}
