vim.opt_local.textwidth = 85

if vim.uv.os_uname().sysname == "Windows_NT" then
    return
end

vim.opt_local.spell = false
vim.opt_local.spelllang = 'es'
