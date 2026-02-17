local is_windows = require("extras.os_detection").is_windows

return {
    'wakatime/vim-wakatime',
    lazy = false,
    enabled = not is_windows(),
}
