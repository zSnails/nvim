local kind_icons = {
    Text = "",
    Method = "",
    Function = "󰡱",
    Constructor = "",
    Field = "",
    Variable = "󰫧",
    Class = "",
    Interface = "",
    Module = "󰅪",
    Property = "",
    Unit = "",
    Value = "",
    Enum = "",
    Keyword = "",
    Snippet = "",
    Color = "",
    File = "",
    Reference = "",
    Folder = "",
    EnumMember = "",
    Constant = "",
    Struct = "",
    Event = "",
    Operator = "",
    TypeParameter = ""
}

return {
    'hrsh7th/nvim-cmp',
    config = function(_, _)
        local cmp = require('cmp')
        cmp.setup({
            formatting = {
                fields = { "kind", "abbr", "menu" },
                format = function(_, vim_item)
                    vim_item.menu = vim_item.kind:upper()
                    vim_item.kind = kind_icons[vim_item.kind] .. " |"
                    return vim_item
                end
            },
            snippet = {
                expand = function(args)
                    require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                ['<C-f>'] = cmp.mapping.scroll_docs(4),
                ['<C-Space>'] = cmp.mapping.complete(),
                ['<C-e>'] = cmp.mapping.abort(),
                ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
            }),
            sources = cmp.config.sources({
                { name = 'nvim_lsp' },
                { name = 'luasnip' }, -- For luasnip users.
                { name = 'buffer' },
                { name = 'path' },
            })
        })

        cmp.setup.cmdline(':', {
            mapping = cmp.mapping.preset.cmdline(),
            sources = cmp.config.sources({
                { name = 'path' }
            }, {
                { name = 'cmdline' }
            })
        })

        cmp.setup.filetype('gitcommit', {
            sources = cmp.config.sources({
                { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
                { name = 'buffer' },
            })
        })
        cmp.event:on('confirm_done', require('nvim-autopairs.completion.cmp').on_confirm_done())
    end,
    dependencies = {
        'windwp/nvim-autopairs',
        { 'hrsh7th/cmp-nvim-lsp' },
        { 'hrsh7th/cmp-buffer' },
        { 'hrsh7th/cmp-path' },
        { 'hrsh7th/cmp-cmdline' },
        { 'L3MON4D3/LuaSnip' },
        { 'saadparwaiz1/cmp_luasnip' }
    }
}
