local servers = {
    "zls",
    "nimls",
    -- "gdscript",
    "solargraph",
    "phpactor",
    "jdtls",
    "gopls",
    -- "emmet_ls",
    "jedi_language_server",
    "lua_ls",
    "clangd",
    "rust_analyzer",
    "tsserver",
    "fsautocomplete"
}


local capabilities = nil
local found, nvim_lsp = pcall(require, 'cmp_nvim_lsp')

if found then
    capabilities = nvim_lsp.default_capabilities()
else
    capabilities = vim.lsp.protocol.make_client_capabilities()
end

capabilities.diagnostic = true

local onAttachFunc = require('config.mappings').onAttachFunc

local present, lsConf = pcall(require, 'lspconfig')

if not present then
    return
end

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
        enable_editorconfig_support = true,
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
        }
    }
end
