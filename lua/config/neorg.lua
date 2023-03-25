local present, neorg = pcall(require, 'neorg')

if not present then
    return
end

neorg.setup {
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
                    personal_notes = "~/projects/neorg/pnotes",
                    ambiente_humano = "~/projects/academic/ambiente_humano/neorg",
                    asistencia = "~/projects/academic/asistencias/biblioteca"
                }
            }
        }
    }
}
