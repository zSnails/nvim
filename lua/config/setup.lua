-- NOTE: options
vim.o.laststatus = 3
vim.o.number = true
vim.o.relativenumber = true
vim.o.scrolloff = 7
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.showtabline = false
vim.o.background = 'dark'
vim.o.termguicolors = true
vim.o.showmode = false
vim.o.showcmd = true
vim.o.clipboard = 'unnamed'
vim.o.ruler = false
vim.o.wrap = false
vim.o.conceallevel = 3
vim.g.NERDTreeMinimalUI = 1

vim.o.signcolumn = "yes"

-- NOTE: for my future self, vim.o and vim.opt behave different in the sense that
-- vim.o can only allow for basic usage, while vim.opt can do more stuff
vim.opt.completeopt = { "menu", "menuone", "noselect" }

-- these highlight groups disable all diff and window separator background
-- colors so that they're not messing with my beautiful color scheme setup
vim.cmd [[
highlight WinSeparator guibg=NONE
highlight diffadded guibg=NONE
highlight DiffChange guibg=NONE
highlight diffremoved guibg=NONE
]]

vim.cmd.colorscheme("kanagawa")
