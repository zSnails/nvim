vim.opt_local.textwidth = 85
if vim.uv.os_uname().sysname ~= "Windows_NT" then
    vim.opt_local.spell = true
    vim.opt_local.spelllang = 'es'
end
