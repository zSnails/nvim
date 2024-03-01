return {
    "zSnails/NeoNeedsKey",
    dir = "~/projects/NeoNeedsKey",
    dev = false,
    config = function()
        local nnk = require("NeoNeedsKey")
        nnk.setup {
            timeout = 5,
            position = "bottom-right",
        }
    end
}
