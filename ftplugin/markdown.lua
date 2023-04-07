if vim.loop.os_uname().sysname == "Windows" then
    return
end

vim.opt_local.textwidth = 85
vim.opt_local.spell = true
vim.opt_local.spelllang = 'es'
