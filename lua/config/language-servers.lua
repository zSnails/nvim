local servers = {
    "zls",
    "nimls",
    -- "gdscript",
    "solargraph",
    "phpactor",
    "jdtls",
    "gopls",
    "emmet_ls",
    "jedi_language_server",
    "sumneko_lua",
    "clangd",
    "rust_analyzer",
    "tsserver",
}


local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.diagnostic = true

local onAttachFunc = require('config.mappings').onAttachFunc

local lsConf = require('lspconfig')

lsConf.gdscript.setup {
    capabilities = capabilities,
    on_attach = function(client)
        onAttachFunc() -- setup normal keybinds
        local _notify = client.notify
        client.notify = function(method, params)
            -- if method == 'textDocument/didClose' then
            --     return
            -- end
            if method == 'workspace/didChangeConfiguration' then
                return
            end

            _notify(method, params)
        end
    end
}

for _, server in ipairs(servers) do
    lsConf[server].setup {
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
                    checkThirdParty = false,
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
