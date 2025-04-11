vim.o.laststatus = 3
vim.o.number = true
vim.o.relativenumber = true
vim.o.scrolloff = 7
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.showtabline = 1
vim.o.background = 'dark'
vim.o.termguicolors = true
vim.o.showmode = false
vim.o.showcmd = true
vim.o.showcmdloc = "statusline"
-- vim.o.clipboard = 'unnamedplus'
vim.o.ruler = false
vim.o.wrap = false
vim.o.swapfile = true -- never disable this again
vim.o.conceallevel = 3
vim.o.grepprg = "rg --vimgrep"

vim.o.signcolumn = "yes"

-- NOTE: for my future self, vim.o and vim.opt behave different in the sense that
-- vim.o can only allow for basic usage, while vim.opt can do more stuff
vim.opt.completeopt = { "menu", "menuone", "noselect" }

vim.cmd.packadd("termdebug")
vim.g.termdebug_wide = 1
vim.g.netrw_bufsettings = 'noma nomod nu rnu nobl nowrap ro'
vim.g.netrw_banner = false
-- vim.g.netrw_liststyle = 3
--
vim.api.nvim_create_user_command("Grep", function()
    local result = vim.fn.input("What u lookin' for boss?> ")
    if result == "" then
        return
    end

    vim.cmd(":grep " .. result)
    vim.cmd(":copen")
end, {})

vim.diagnostic.config({ virtual_text = true })
