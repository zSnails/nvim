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
    texlab = {},
    vuels = {
        cmd = { "vls", "--stdio" }
    },
    phpactor = {
        cmd = { "phpactor", "language-server", "-vvv" }
    },
    cssls = {},
    jdtls = {},
    gopls = {},
    emmet_ls = {},
    pyright = {},
    omnisharp = {
        cmd = { "dotnet", "/usr/lib/omnisharp-roslyn/OmniSharp.dll" }
    },
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
    local server_table = {
        capabilities = capabilities,
        on_attach = on_attach_func
    }
    local final_table = vim.tbl_extend("keep", server_table, config)
    lsp_config[server].setup(final_table)
end
