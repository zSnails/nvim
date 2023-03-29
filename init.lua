-- Initialize everything

local version = vim.version()

if version.minor < 8 then
    vim.api.nvim_err_writeln(string.format("This configuration requires nvim 0.8+, but you're using %d.%d", version
        .major, version.minor))
    return
end

require('config.plugins')
require('config.setup')
require('config.presence')
require('config.feline')
require('config.todo-comments')
require('config.mappings')
require('config.lualine')
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
