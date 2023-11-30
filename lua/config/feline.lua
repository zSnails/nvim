---depcends on https://github.com/feline-nvim/feline.nvim
local present, feline = pcall(require, "feline")

if not present then
    return
end

local theme = {
    aqua = "#82aaff",
    bg = "#011627",
    blue = "#5e97ec",
    cyan = "#7fdbca",
    darkred = "#fc514e",
    fg = "#b2b2b2",
    gray = "#14364c",
    green = "#a1cd5e",
    lime = "#54CED6",
    orange = "#f78c6c",
    pink = "#ff5874",
    purple = "#ae81ff",
    red = "#ff5874",
    yellow = "#ffcb8b"
}

-- local theme = {
--     aqua = "#b5179e",
--     bg = "#0101d1e",
--     blue = "#5e97ec",
--     cyan = "#0650b2",
--     darkred = "#b5179e",
--     fg = "#f6f6f6",
--     gray = "#0650b2",
--     green = "#94f377",
--     lime = "#4cc9f0",
--     orange = "#ffca38",
--     pink = "#ff0a78",
--     purple = "#ff0a78",
--     red = "#ef0671",
--     yellow = "#efef06"
-- }

local mode_theme = {
    ["NORMAL"] = theme.green,
    ["OP"] = theme.cyan,
    ["INSERT"] = theme.aqua,
    ["VISUAL"] = theme.yellow,
    ["LINES"] = theme.purple,
    ["BLOCK"] = theme.orange,
    ["REPLACE"] = theme.purple,
    ["V-REPLACE"] = theme.pink,
    ["ENTER"] = theme.pink,
    ["MORE"] = theme.pink,
    ["SELECT"] = theme.purple,
    ["SHELL"] = theme.cyan,
    ["TERM"] = theme.lime,
    ["NONE"] = theme.gray,
    ["COMMAND"] = theme.blue,
}

local component = {}

local provider = require("feline.providers.vi_mode")

component.vim_mode = {
    provider = ' ',

    -- provider = function()
    --     return vim.api.nvim_get_mode().mode:upper()
    -- end,

    hl = function()
        return {
            bg = "gray",
            fg = provider.get_mode_color(),
            -- fg = "gray",
            -- bg = require("feline.providers.vi_mode").get_mode_color(),
            style = "bold",
            name = "NeovimModeHLColor",
        }
    end,
    left_sep = "block",
    -- right_sep = "block",
}

component.git_branch = {
    provider = "git_branch",
    hl = {
        fg = "fg",
        bg = "bg",
        style = "bold",
    },
    left_sep = " ",
    right_sep = "",
}

component.git_add = {
    provider = "git_diff_added",
    hl = {
        fg = "green",
        bg = "bg",
    },
    left_sep = "",
    right_sep = "",
}

component.git_delete = {
    provider = "git_diff_removed",
    hl = {
        fg = "red",
        bg = "bg",
    },
    left_sep = "",
    right_sep = "",
}

component.git_change = {
    provider = "git_diff_changed",
    hl = {
        fg = "yellow",
        bg = "bg",
    },
    left_sep = "",
    right_sep = "",
}

component.separator = {
    provider = "",
    hl = {
        fg = "bg",
        bg = "bg",
    },
}

component.diagnostic_errors = {
    provider = "diagnostic_errors",
    hl = {
        fg = "red",
    },
}

component.diagnostic_warnings = {
    provider = "diagnostic_warnings",
    hl = {
        fg = "yellow",
    },
}

component.diagnostic_hints = {
    provider = "diagnostic_hints",
    hl = {
        fg = "aqua",
    },
}

component.diagnostic_info = {
    provider = "diagnostic_info",
}

component.lsp = {
    provider = function()
        if not rawget(vim, "lsp") then
            return ""
        end

        local progress = vim.lsp.util.get_progress_messages()[1]
        if vim.o.columns < 120 then
            return ""
        end

        local clients = vim.lsp.get_active_clients({ bufnr = 0 })
        if #clients ~= 0 then
            if progress then
                -- NOTE: These are fira code's spinners, they might or might not work on other fonts
                local spinners = {
                    "\u{ee06}",
                    "\u{ee07}",
                    "\u{ee08}",
                    "\u{ee09}",
                    "\u{ee0A}",
                    "\u{ee0B}",
                }
                local ms = vim.loop.hrtime() / 1000000
                local frame = math.floor(ms / 120) % #spinners
                local content = string.format("%%<%s", spinners[frame + 1])
                return content or ""
            else
                return " " .. clients[1].name
            end
        end
        return ""
    end,
    hl = function()
        local progress = vim.lsp.util.get_progress_messages()[1]
        return {
            fg = progress and "yellow" or "green",
            bg = "gray",
            style = "bold",
        }
    end,
    left_sep = "",
    right_sep = "block",
}

component.file_size = {
    provider = {
        name = "file_size",
    },
    hl = {
        fg = "fg",
        bg = "gray",
        style = "bold",
    },
    left_sep = "",
    right_sep = "block",
}

component.file_type = {
    provider = {
        name = "file_type",
        opts = {
            filetype_icon = true,
        },
    },
    hl = {
        fg = "fg",
        bg = "gray",
    },
    left_sep = "block",
    right_sep = "block",
}

component.scroll_bar = {
    provider = function()
        local chars = { " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ",
            " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ",
            " ", " ", }
        local line_ratio = vim.api.nvim_win_get_cursor(0)[1] / vim.api.nvim_buf_line_count(0)
        local position = math.floor(line_ratio * 100)

        if position <= 5 then
            ---@diagnostic disable-next-line: cast-local-type
            position = " TOP"
        elseif position >= 95 then
            ---@diagnostic disable-next-line: cast-local-type
            position = " BOT"
        else
            ---@diagnostic disable-next-line: cast-local-type
            position = chars[math.floor(line_ratio * #chars)] .. position .. '%%'
        end
        return position
    end,
    hl = function()
        local position = math.floor(vim.api.nvim_win_get_cursor(0)[1] / vim.api.nvim_buf_line_count(0) * 100)
        local fg
        ---@diagnostic disable-next-line: unused-local
        local style

        if position <= 5 then
            fg = "aqua"
            ---@diagnostic disable-next-line: unused-local
            style = "bold"
        elseif position >= 95 then
            fg = "red"
            ---@diagnostic disable-next-line: unused-local
            style = "bold"
        else
            fg = "purple"
            ---@diagnostic disable-next-line: unused-local
            style = nil
        end
        return {
            fg = fg,
            style = style,
            bg = "gray",
        }
    end,
    left_sep = "block",
    right_sep = "block",
}

local left = {
    component.vim_mode,
    component.file_type,
    component.file_size,
    component.lsp,
    component.git_branch,
    component.git_add,
    component.git_delete,
    component.git_change,
}
local middle = {
}
local right = {
    component.diagnostic_errors,
    component.diagnostic_warnings,
    component.diagnostic_info,
    component.diagnostic_hints,
    component.scroll_bar,
}

local components = {
    active = {
        left,
        middle,
        right,
    },
}

feline.setup({
    components = components,
    theme = theme,
    vi_mode_colors = mode_theme,
})
