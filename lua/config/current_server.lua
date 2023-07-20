local M = {}

function M.current_server()
    return ' ' .. vim.lsp.buf_get_clients()[1].name
end

return M
