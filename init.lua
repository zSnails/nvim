-- Initialize everything

if not vim.fn.has("nvim-0.10") then
    local version = vim.version()
    vim.api.nvim_err_writeln(string.format(
        "[zSnails/nvim]: This configuration requires nvim 0.10+, but you're using %d.%d.%d", version
        .major, version.minor, version.patch))
    return
end

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
    vim.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath
    }):wait()
end
vim.opt.rtp:prepend(lazypath)

vim.g.db_ui_use_nerd_fonts = true

require('config')
require("lazy").setup("plugins")
