local functions = require("extras.functions")

return {
    'wakatime/vim-wakatime',
    lazy = false,
    enabled = not functions.is_windows(),
}
