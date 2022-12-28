local mappings = {}

local function nnoremap(key, action)
    vim.keymap.set("n", key, action, { silent = true })
end

local function vnoremap(key, action)
    vim.keymap.set("v", key, action, { silent = true })
end

-- setting map leader
vim.g.mapleader = " "

-- moving lines in visual mode

vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")


-- todo comments

local todoComments = require('todo-comments')

nnoremap("]t", todoComments.jump_next)
nnoremap("[t", todoComments.jump_prev)

-- todo list mappings
nnoremap("<leader>ct", ":TodoLocList<CR>")

-- fuzzy finder mappings
local telescope_builtins = require('telescope.builtin')
nnoremap("<leader>ff", telescope_builtins.find_files)
nnoremap("<leader>fg", telescope_builtins.live_grep)
nnoremap("<leader>fb", telescope_builtins.buffers)
nnoremap("<leader>fh", telescope_builtins.help_tags)
nnoremap("<leader>ft", telescope_builtins.treesitter)
nnoremap("<leader>tt", ":TodoTelescope theme=dropdown<CR>")

-- Easier file navigation keymaps

nnoremap("<leader>bn", ":bn<CR>")
nnoremap("<leader>bp", ":bp<CR>")
nnoremap("<leader>bd", ":bd<CR>")

-- nerd tree mappings
nnoremap("<C-b>", ":NERDTreeToggle<CR>")

-- lsp mapping functions
function mappings.onAttachFunc()
    nnoremap('gD', vim.lsp.buf.declaration)
    nnoremap('gd', vim.lsp.buf.definition)
    nnoremap('K', vim.lsp.buf.hover)
    nnoremap('<leader>rn', vim.lsp.buf.rename)
    nnoremap('<C-.>', vim.lsp.buf.code_action)
    nnoremap('gr', vim.lsp.buf.references)
    nnoremap('<leader>f', vim.lsp.buf.format)
    nnoremap('<leader>co', vim.lsp.buf.document_symbol)
end

return mappings
