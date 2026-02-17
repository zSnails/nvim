M = {}
---@return boolean - Whether or not we are on windows
function M.is_windows()
    return vim.uv.os_uname().sysname == "Windows_NT"
end

return M
