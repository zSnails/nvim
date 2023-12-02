local config_path = vim.fn.stdpath("config") .. "/lua/manager/plugins"
local dirs = vim.fs.dir(config_path)

local plugins = {}

for file in dirs do
    if file ~= "init.lua" then
        local dot_idx = file:find(".", 0, true)
        local name = file:sub(0, dot_idx - 1)
        table.insert(plugins, require('manager.plugins.' .. name))
    end
end

return plugins
