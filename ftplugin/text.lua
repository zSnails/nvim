if vim.loop.os_uname().sysname == "Windows_NT" then
    return
end

vim.opt_local.spell = true
vim.opt_local.spelllang = 'es'
