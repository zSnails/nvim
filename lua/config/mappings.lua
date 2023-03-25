local mappings = {}

local function nmap(key, action)
    vim.keymap.set("n", key, action, { silent = true })
end

local function vmap(key, action)
    vim.keymap.set("v", key, action, { silent = true })
end

-- setting map leader
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- moving lines in visual mode

vmap("J", ":m '>+1<CR>gv=gv")
vmap("K", ":m '<-2<CR>gv=gv")


-- todo comments

local installed, todoComments = pcall(require, 'todo-comments')

if installed then
    nmap("]t", todoComments.jump_next)
    nmap("[t", todoComments.jump_prev)
end
-- todo list mappings
nmap("<leader>ct", ":TodoLocList<CR>")

-- fuzzy finder mappings
---@diagnostic disable-next-line: redefined-local
local installed, telescope_builtins = pcall(require, 'telescope.builtin')

if installed then
    nmap("<leader>ff", telescope_builtins.find_files)
    nmap("<leader>fg", telescope_builtins.live_grep)
    nmap("<leader>fb", telescope_builtins.buffers)
    nmap("<leader>fh", telescope_builtins.help_tags)
    nmap("<leader>ft", telescope_builtins.treesitter)
    nmap("<leader>tt",
        ":TodoTelescope theme=ivy initial_mode=normal previewer=false layout_config={bottom_pane={height=12}}<CR>")
    nmap("<leader>di", telescope_builtins.diagnostics)
end

-- Easier file navigation keymaps

nmap("<leader>bn", ":bn<CR>")
nmap("<leader>bp", ":bp<CR>")
nmap("<leader>bd", ":bd<CR>")
nmap("<leader>bc", ":clo<CR>")

-- NvimTree mappings
nmap("<C-b>", ":NvimTreeFindFile<CR>")
nmap("<A-b>", ":NvimTreeToggle<CR>")

-- lsp mapping functions
function mappings.onAttachFunc()
    nmap('gD', vim.lsp.buf.declaration)
    nmap('gd', vim.lsp.buf.definition)
    nmap('K', vim.lsp.buf.hover)
    nmap('<leader>rn', vim.lsp.buf.rename)
    nmap('<C-.>', vim.lsp.buf.code_action)
    nmap('gr', vim.lsp.buf.references)
    nmap('<leader>f', vim.lsp.buf.format)
    nmap('<leader>co', vim.lsp.buf.document_symbol)
end

return mappings
