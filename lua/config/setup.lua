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
vim.o.swapfile = true -- never disable this again
vim.o.conceallevel = 3

vim.o.signcolumn = "yes"

-- NOTE: for my future self, vim.o and vim.opt behave different in the sense that
-- vim.o can only allow for basic usage, while vim.opt can do more stuff
vim.opt.completeopt = { "menu", "menuone", "noselect" }

-- these highlight groups disable all diff and window separator background
-- colors so that they're not messing with my beautiful color scheme setup

vim.cmd [[silent! colorscheme kanagawa]]

-- uncomment this when using kanagawa or tokyonight

-- vim.cmd [[
-- highlight WinSeparator guibg=NONE
-- highlight Normal guibg=NONE ctermbg=NONE
-- highlight NonText guibg=NONE ctermbg=NONE
-- highlight NvimTreeNormal guibg=NONE ctermbg=NONE
-- highlight LineNr guibg=NONE ctermbg=NONE
-- ]]

-- highlight DiffAdd guibg=NONE
-- highlight DiffText guibg=NONE
-- highlight DiffChange guibg=NONE
-- highlight DiffDelete guibg=NONE
-- highlight LineNr guibg=NONE
-- highlight SignColumn guibg=NONE
-- highlight GitSignsAdd guibg=NONE
-- highlight GitSignsChange guibg=NONE
-- highlight GitSignsDelete guibg=NONE
-- highlight GitSignsUntracker guibg=NONE
-- ]]
