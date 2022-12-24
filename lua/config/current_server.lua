local M = {}

function M.serverProgress()
    local messages = vim.lsp.util.get_progress_messages()
    if #messages == 0 then
        return
    end

    local status = {}
    for _, msg in pairs(messages) do
        table.insert(status, (msg.percentage or 0) .. "%% " .. (msg.title or ""))
    end

    local spinners = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" }
    local ms = vim.loop.hrtime() / 1000000
    local frame = math.floor(ms / 120) % #spinners
    return table.concat(status, " | ") .. " " .. spinners[frame + 1]
end

function M.currentServer()
    return vim.lsp.buf_get_clients()[1].name
end

return M
