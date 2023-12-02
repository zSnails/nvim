return {
    "folke/todo-comments.nvim",
    opts = {
        signs = true
    },
    dependencies = {
        'nvim-lua/plenary.nvim'
    },
    config = function(_, opts)
        local todo_comments = require("todo-comments")
        todo_comments.setup(opts)
        --local todo_comments_installed, todo_comments = pcall(require, 'todo-comments')

        vim.keymap.set('n', "]t", todo_comments.jump_next, { silent = true })
        vim.keymap.set('n', "[t", todo_comments.jump_prev, { silent = true })
        vim.keymap.set('n', "<leader>ct", ":TodoLocList<CR>", { silent = true })
    end
}
