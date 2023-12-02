return {
    'nvim-neorg/neorg',
    dependencies = {
        'nvim-lua/plenary.nvim'
    },
    opts = {
        load = {
            ["core.defaults"] = {},
            ["core.export"] = {},
            ["core.export.markdown"] = {},
            ["core.integrations.treesitter"] = {},
            ["core.concealer"] = {},
            ["core.dirman"] = {
                config = {
                    workspaces = {
                        notes = "~/projects/neorg/notes",
                        personal_notes = "~/projects/neorg/pnotes",
                        ambiente_humano = "~/projects/academic/ambiente_humano/neorg",
                        asistencia = "~/projects/academic/asistencias/biblioteca",
                        seminario = "~/projects/academic/seminarios/filosofico"
                    }
                }
            }
        }
    }
}
