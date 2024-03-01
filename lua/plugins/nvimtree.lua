return {
    'nvim-tree/nvim-tree.lua',
    enabled = false,
    dependencies = { { 'nvim-tree/nvim-web-devicons' } },
    config = function()
        vim.g.loaded_netrw = 1

        require("nvim-tree").setup()

        vim.keymap.set("n", "<C-b>", ":NvimTreeFindFile<CR>", { silent = true })
        vim.keymap.set("n", "<A-b>", ":NvimTreeToggle<CR>", { silent = true })
    end
}
