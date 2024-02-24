return {
    'nvim-tree/nvim-web-devicons',
    opts = {
        override = {
            [".babelrc"] = {
                icon = "󰨥",
                color = "#cbcb41",
                cterm_color = "185",
                name = "Babelrc",
            },

            ["pdf"] = {
                icon = "",
                color = "#b30b00",
                cterm_color = "124",
                name = "Pdf",
            },
            ["xml"] = {
                icon = "󰗀",
                color = "#e37933",
                cterm_color = "166",
                name = "Xml",
            },
            ["yaml"] = {
                icon = "",
                color = "#6d8086",
                cterm_color = "66",
                name = "Yaml",
            },
            ["yml"] = {
                icon = "",
                color = "#6d8086",
                cterm_color = "66",
                name = "Yml",
            },
            txt = {
                icon = "",
                color = "#89e051",
                cterm_color = "113",
                name = "Txt",
            },
            ["svg"] = {
                icon = "󰜡",
                color = "#FFB13B",
                cterm_color = "214",
                name = "Svg",
            },
            ["tex"] = {
                icon = "",
                color = "#3D6117",
                cterm_color = "22",
                name = "Tex",
            },
        }
    },
}
