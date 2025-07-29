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

return {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
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
    },
    config = function(_, opts)
        require("telescope").setup(opts)
        local telescope_builtins = require("telescope.builtin")
        vim.keymap.set('n', "<leader>ff", telescope_builtins.find_files, { silent = true })
        vim.keymap.set('n', "<leader>fg", telescope_builtins.live_grep, { silent = true })
        vim.keymap.set('n', "<leader>fb", telescope_builtins.buffers, { silent = true })
        vim.keymap.set('n', "<leader>fh", telescope_builtins.help_tags, { silent = true })
        vim.keymap.set('n', "<leader>ft", telescope_builtins.treesitter, { silent = true })
        vim.keymap.set('n', "<leader>tt",
            ":TodoTelescope theme=ivy initial_mode=normal previewer=false layout_config={bottom_pane={height=12}}<CR>",
            { silent = true })
        vim.keymap.set('n', "<leader>di", telescope_builtins.diagnostics, { silent = true })
    end
}
