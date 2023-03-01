require('neorg').setup {
    load = {
        ["core.defaults"] = {},
        ["core.export"] = {},
        ["core.export.markdown"] = {},
        ["core.integrations.treesitter"] = {},
        ["core.norg.concealer"] = {},
        ["core.norg.dirman"] = {
            config = {
                workspaces = {
                    notes = "~/projects/neorg/notes",
                    ambiente_humano = "~/projects/academic/ambiente_humano"
                }
            }
        }
    }
}
