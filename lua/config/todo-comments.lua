local present, todo_comments = pcall(require, "todo-comments")

if not present then
    return
end

todo_comments.setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    signs = true
}
