vim.api.nvim_create_user_command(
    'Imginsert',
    function (opts)
        local resulting_path = vim.fn.system("wget -nv -P assets '" .. opts.args .. "' 2>&1 | cut -d'\"' -f2")
        vim.cmd("norm i#figure(image(\"" .. resulting_path .. "\")\\, caption: [])")
    end,
    {
        nargs = 1
    }
)
