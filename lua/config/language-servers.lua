local servers = {
    "zls",
    "nimls",
    "solargraph",
    "phpactor",
    "jdtls",
    "gopls",
    "emmet_ls",
    "jedi_language_server",
    "sumneko_lua",
    "clangd",
    "rls",
    "tsserver",
}


local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.diagnostic = true

local onAttachFunc = require('config.mappings').onAttachFunc

for _, server in ipairs(servers) do
    require("lspconfig")[server].setup {
        on_attach = onAttachFunc,
        capabilities = capabilities,
        settings = {
            Lua = {
                runtime = {
                    version = 'LuaJIT',
                },
                diagnostics = {
                    globals = { 'vim' },
                },
                workspace = {
                    library = vim.api.nvim_get_runtime_file("", true),
                },
                telemetry = {
                    enable = false,
                },
            },
            Python = {
                provideFormatter = true,
                pythonFormatter = "black"
            }
        }
    }
end
