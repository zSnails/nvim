local orgmode = require('orgmode')

orgmode.setup_ts_grammar()

orgmode.setup({
    org_agenda_files = {'~/projects/org/agenda/*'},
    org_default_notes_file = '~/projects/org/notes.org',
})
