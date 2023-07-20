local Mappings = {}

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

local todo_comments_installed, todo_comments = pcall(require, 'todo-comments')

if todo_comments_installed then
    nmap("]t", todo_comments.jump_next)
    nmap("[t", todo_comments.jump_prev)
end
-- todo list mappings
nmap("<leader>ct", ":TodoLocList<CR>")

-- fuzzy finder mappings
---@diagnostic disable-next-line: redefined-local
local telescope_installed, telescope_builtins = pcall(require, 'telescope.builtin')

if telescope_installed then
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

local nvim_tree_installed, _ = pcall(require, "nvim-tree")

if nvim_tree_installed then
    -- NvimTree mappings
    nmap("<C-b>", ":NvimTreeFindFile<CR>")
    nmap("<A-b>", ":NvimTreeToggle<CR>")
end

-- lsp mapping functions
function Mappings.on_attach_func()
    nmap('gD', vim.lsp.buf.declaration)
    nmap('gd', vim.lsp.buf.definition)
    nmap('K', vim.lsp.buf.hover)
    nmap('<leader>rn', vim.lsp.buf.rename)
    nmap('<C-.>', vim.lsp.buf.code_action)
    nmap('gr', vim.lsp.buf.references)
    nmap('<leader>f', vim.lsp.buf.format)
    nmap('<leader>co', vim.lsp.buf.document_symbol)
end

return Mappings
