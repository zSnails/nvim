local installed, nvim_autopairs = pcall(require, 'nvim-autopairs')

if not installed then
    return
end

nvim_autopairs.setup({
    disable_filetype = { 'lisp' }
})
