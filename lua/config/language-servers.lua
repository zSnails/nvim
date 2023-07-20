local capabilities = nil
local cmp_nvim_installed, nvim_lsp = pcall(require, 'cmp_nvim_lsp')

if cmp_nvim_installed then
    capabilities = nvim_lsp.default_capabilities()
else
    capabilities = vim.lsp.protocol.make_client_capabilities()
end

capabilities.diagnostic = true

local on_attach_func = require('config.mappings').on_attach_func

local lspconfig_installed, lsp_config = pcall(require, 'lspconfig')

if not lspconfig_installed then
    return
end

local servers = {
    zls = {},
    nimls = {},
    -- "gdscript"={},
    -- "solargraph"={},
    texlab = {},
    phpactor = {},
    cssls = {},
    -- psalm={},
    jdtls = {},
    gopls = {},
    emmet_ls = {},
    -- jedi_language_server={},
    pyright = {},
    lua_ls = {
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
            }
        }
    },
    clangd = {},
    rust_analyzer = {},
    tsserver = {},
    fsautocomplete = {},
    gdscript = {
        on_attach = function(client)
            on_attach_func()
            local _notify = client.notify
            client.notify = function(method, params)
                if method == 'workspace/didChangeConfiguration' then
                    return
                end
                _notify(method, params)
            end
        end
    },
}

for server, config in pairs(servers) do
    lsp_config[server].setup {
        capabilities = capabilities,
        on_attach = config.on_attach or on_attach_func,
        settings = servers.settings
    }
end
