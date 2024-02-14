return {
    "zSnails/NeoNeedsKey",
    -- dir = "~/projects/NeoNeedsKey",
    config = function()
        local nnk = require("NeoNeedsKey")
        nnk.setup {
            timeout = 0
        }
    end
}
