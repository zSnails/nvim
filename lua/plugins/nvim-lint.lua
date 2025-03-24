return {
    'mfussenegger/nvim-lint',
    enbled = true,
    config = function()
        local lint = require('lint')
        lint.linters_by_ft = {
            go = { "golangcilint" },
            python = { "mypy", "pylint" }
        }
        vim.keymap.set("n", "<leader>ll", lint.try_lint, { silent = true })
        vim.keymap.set("n", "<leader>di", vim.diagnostic.setqflist)
        -- vim.api.nvim_create_autocmd({ "BufWritePost" }, {
        --     callback = function()
        --         lint.try_lint()
        --     end
        -- })
    end
}
