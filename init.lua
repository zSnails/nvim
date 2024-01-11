-- Initialize everything

local version = vim.version()
if not vim.fn.has("nvim-0.9") then
    vim.api.nvim_err_writeln(string.format(
        "[zSnails/nvim]: This configuration requires nvim 0.9+, but you're using %d.%d.%d", version
        .major, version.minor, version.patch))
    return
end

require('config.setup')
require('manager')
require('config.mappings')
