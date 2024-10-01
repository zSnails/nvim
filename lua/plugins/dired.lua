return {
    "X3eRo0/dired.nvim",

    config = function()
        require("dired").setup {
            keybinds = {
                dired_quit = 'q'
            }
        }
        vim.keymap.set("n", "<M-b>", function() vim.cmd("Dired") end, { silent = true })
    end
}
