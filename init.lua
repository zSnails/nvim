-- Initialize everything

local version = vim.version()
if not vim.fn.has("nvim-0.8") then
    vim.api.nvim_err_writeln(string.format(
        "[zSnails/nvim]: This configuration requires nvim 0.8+, but you're using %d.%d.%d", version
        .major, version.minor, version.patch))
    return
end

require('config')
