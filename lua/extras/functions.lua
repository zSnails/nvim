M = {}

function M.is_windows()
    return vim.uv.os_uname().sysname == "Windows_NT"
end

function M.get_intelephense_path()
    if M.is_windows() then
        return "THIS_IS_WINDOWS_SO_NO_INTELEPHENSE_PATH"
    end

    return os.getenv("HOME") .. '/intelephense/key.txt'
end

return M
