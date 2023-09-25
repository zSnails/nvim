-- Initialize everything

local version = vim.version()
if not vim.fn.has("nvim-0.8") then
    vim.api.nvim_err_writeln(string.format(
        "[zSnails/nvim]: This configuration requires nvim 0.8+, but you're using %d.%d.%d", version
        .major, version.minor, version.patch))
    return
end

require('config.plugins')
require('config.setup')
require('config.presence')
require('config.feline')
require('config.todo-comments')
require('config.mappings')
require('config.language-servers')
require('config.gitsigns')
require('config.telescope')
require('config.nvimtree')
require('config.completion')
require('config.treesitter')
require('config.leap')
require('config.termdebug')
require('config.autopairs')
require('config.neorg')
require('config.laravel')
