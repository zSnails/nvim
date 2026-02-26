local on_attach = require('config.mappings').on_attach_func

return {
    'neovim/nvim-lspconfig',
    dependencies = {
        'hrsh7th/cmp-nvim-lsp',
        'folke/neodev.nvim',
    },
    config = function(_, _)
        -- NOTE: if pcall returns an error the message is stored in the servers variable
        local success, servers = pcall(require, "config.local-servers")
        if not success then
            -- TODO: Si no hay local-servers que no haga nada
            vim.api.nvim_err_writeln(vim.format("could not load 'config.local-servers': %s", servers))
            return
        end

        local nvim_lsp = require('cmp_nvim_lsp')
        local capabilities = nvim_lsp.default_capabilities()
        capabilities.diagnostic = true

        for server, config in pairs(servers) do
            local server_table = {
                capabilities = capabilities,
                on_attach = on_attach,
            }
            local final_table = vim.tbl_extend("keep", server_table, config)
            vim.lsp.enable(server)
            vim.lsp.config(server, final_table)
        end
    end,
}
