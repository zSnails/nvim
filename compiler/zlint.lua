vim.o.makeprg = "zlint -f gh"
vim.o.errorformat = table.concat({
    "::%t%*[^ ] file=%f\\,line=%l\\,col=%c\\,title=%*[^:]:%m",
    "%-G"
}, ",")
