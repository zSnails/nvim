local on_attach = require('config.mappings').on_attach_func
local servers = {
    glsl_analyzer = {},
    zls = {},
    ols = {},
    hls = {},
    air = {},
    qmlls = {
        cmd = {"qmlls6", "-E"}
    },
    intelephense = {
        init_options = {
            licenceKey = os.getenv("HOME") .. '/intelephense/key.txt'
        },
    },
    -- typst_lsp = {
    --     offset_encoding = "utf-8",
    -- },
    neocmake = {},
    templ = {},
    nimls = {},
    lemminx = {},
    eslint = {},
    texlab = {},
    kotlin_language_server = {},
    volar = { filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json' } },
    phpactor = {
        cmd = { "phpactor", "language-server", "-vvv" }
    },
    cssls = {},
    jdtls = {},
    -- java_language_server = {
    --     -- cmd = "/home/ayaka/java-language-server/dist/lang_server_linux.sh"
    -- },
    gopls = {},
    emmet_ls = {
        filetypes = { "astro", "css", "eruby", "html", "htmldjango", "javascriptreact", "less", "pug", "sass", "scss", "svelte", "typescriptreact", "vue", "templ" }
    },
    pyright = {
        settings = {
            python = {
                analysis = {
                    autoSearchPaths = true,
                    -- diagnosticMode = "openFilesOnly",
                    diagnosticMode = "workspace",
                    useLibraryCodeForTypes = true
                }
            }
        }
    },
    omnisharp = {
        cmd = { "omnisharp" }
    },
    lua_ls = {
        settings = {
            Lua = {
                -- runtime = {
                --     version = 'LuaJIT',
                -- },
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
    ts_ls = {
        init_options = {
            plugins = {
                {
                    name = "@vue/typescript-plugin",
                    location = "/usr/lib/node_modules/@vue/typescript-plugin",
                    languages = { "javascript", "typescript", "vue" },
                }
            }
        },
        filetypes = {
            "javascript",
            "typescript",
            "vue"
        }
    },
    jsonls = {},
    fsautocomplete = {},
    gdscript = {
        on_attach = function(client)
            on_attach()
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


return {
    'neovim/nvim-lspconfig',
    dependencies = {
        'hrsh7th/cmp-nvim-lsp',
        'folke/neodev.nvim',
    },
    config = function(_, _)
        -- local lsp_config = require('lspconfig')
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
