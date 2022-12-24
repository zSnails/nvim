local M = {}

function M.currentServer()
    return vim.lsp.buf_get_clients()[1].name
end

return M
