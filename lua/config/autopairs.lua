local present, npairs = pcall(require, 'nvim-autopairs')

if not present then
    return
end

npairs.setup({
    disable_filetype = {'lisp'}
})
