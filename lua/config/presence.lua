local present, presence = pcall(require, "presence")

if not present then
    return
end

presence.setup {
    neovim_image_text = "Vrayan Mallers",
    main_image = "file",
}
