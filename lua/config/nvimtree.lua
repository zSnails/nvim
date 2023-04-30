-- TODO: add more config, I don't know what though
local present, nvim_tree = pcall(require, "nvim-tree")

if not present then
    return
end

nvim_tree.setup {}
