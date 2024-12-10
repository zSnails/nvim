local Mappings = {}

local function nmap(key, action)
    vim.keymap.set("n", key, action, { silent = true })
end

local function vmap(key, action)
    vim.keymap.set("v", key, action, { silent = true })
end

local function imap(key, action)
    vim.keymap.set("i", key, action, { silent = true })
end

vim.g.mapleader = " "
vim.g.maplocalleader = ","
vim.opt.path = "**"
vmap("J", ":m '>+1<CR>gv=gv")
vmap("K", ":m '<-2<CR>gv=gv")
nmap("<leader>bn", ":bn<CR>")
nmap("<leader>bp", ":bp<CR>")
nmap("<leader>bd", ":bd<CR>")
nmap("<leader>bc", ":clo<CR>")
nmap("<M-b>", ":Explore<CR>")

-- Custom keymaps to remove telescope
vim.keymap.set("n", "<leader>ff", ":find ")
vim.keymap.set("n", "<leader>fg", ":Grep<CR>")
vim.keymap.set("n", "<leader>tt", ":TodoQuickFix<CR>", { silent = true })
-- lsp mapping functions
function Mappings.on_attach_func()
    nmap('gD', vim.lsp.buf.declaration)
    nmap('gd', vim.lsp.buf.definition)
    nmap('K', vim.lsp.buf.hover)
    nmap('<leader>rn', vim.lsp.buf.rename)
    nmap('<leader>.', vim.lsp.buf.code_action)
    nmap('gr', vim.lsp.buf.references)
    nmap('<leader>f', vim.lsp.buf.format)
    nmap('<leader>co', vim.lsp.buf.document_symbol)
    imap('<C-h>', vim.lsp.buf.signature_help)
end

return Mappings
