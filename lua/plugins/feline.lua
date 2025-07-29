local theme = {
    aqua = "#6a9589",
    bg = "#16161d",
    blue = "#223249",
    cyan = "#7fb4ca",
    darkred = "#e82424",
    fg = "#dcd7ba",
    gray = "#717c7c",
    green = "#76946a",
    lime = "#98bb6c",
    orange = "#ffa066",
    pink = "#d27e99",
    purple = "#957fb8",
    red = "#ff5d62",
    yellow = "#e6c384"
}

-- local theme = {
--     aqua = "#b5179e",
--     bg = "#1a1a1a",
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
local mode_alias = {
    ['n'] = '󰰓 ',
    ['no'] = '󰲞 ',
    ['nov'] = '󰲞 ',
    ['noV'] = '󰲞 ',
    ['no'] = '󰲞 ',
    ['niI'] = '󰰓 ',
    ['niR'] = '󰰓 ',
    ['niV'] = '󰰓 ',
    ['v'] = '󰰫 ',
    ['vs'] = '󰰫 ',
    ['V'] = '󰰍 ',
    ['Vs'] = '󰰍 ',
    [''] = '󰯯 ',
    ['s'] = '󰯯 ',
    ['s'] = '󰰢 ',
    ['S'] = '󰰢 ',
    [''] = '󰯯 ',
    ['i'] = '󰰄 ',
    ['ic'] = '󰰄 ',
    ['ix'] = '󰰄 ',
    ['R'] = '󰰟 ',
    ['Rc'] = '󰰟 ',
    ['Rv'] = '󰰟 ',
    ['Rx'] = '󰰟 ',
    ['c'] = '󰯲 ',
    ['cv'] = '󰯲 ',
    ['ce'] = '󰯲 ',
    ['r'] = '󰯸 ',
    ['rm'] = '󰰐 ',
    ['r?'] = '󰯲 ',
    ['!'] = '󰰢 ',
    ['t'] = '󰰥 ',
    ['nt'] = '󰰥 ',
    ['null'] = '󱃓 ',
}

local function vim_mode(_, _)
    return mode_alias[vim.api.nvim_get_mode().mode]
end

component.vim_mode = {
    provider = vim_mode,
    hl = function()
        local provider = require("feline.providers.vi_mode")
        return {
            bg = "blue",
            fg = provider.get_mode_color(),
            style = "bold",
            name = "NeovimModeHLColor",
        }
    end,
    left_sep = "block",
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
    right_sep = " "
}

component.diagnostic_warnings = {
    provider = "diagnostic_warnings",
    hl = {
        fg = "yellow",
    },
    right_sep = " "
}

component.diagnostic_hints = {
    provider = "diagnostic_hints",
    hl = {
        fg = "aqua",
    },
    right_sep = " "
}

component.diagnostic_info = {
    provider = "diagnostic_info",
    right_sep = " "
}

component.lsp = {
    provider = function()
        if not rawget(vim, "lsp") then
            return ""
        end

        local progress = vim.lsp.status()
        if vim.o.columns < 120 then
            return ""
        end

        local clients = vim.lsp.get_clients({ bufnr = 0 })
        if #clients ~= 0 then
            if progress ~= "" then
                -- NOTE: These are fira code's spinners, they might or might not work on other fonts
                local spinners = {
                    "\u{ee06}",
                    "\u{ee07}",
                    "\u{ee08}",
                    "\u{ee09}",
                    "\u{ee0A}",
                    "\u{ee0B}",
                }
                local ms = vim.uv.hrtime() / 1000000
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
        local progress = vim.lsp.status()
        return {
            fg = progress ~= "" and "yellow" or "green",
            bg = "blue",
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
        bg = "blue",
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
        bg = "blue",
    },
    left_sep = "block",
    right_sep = "block",
}

component.command = {
    provider = "%S"
}

component.tree_sitter = {
    provider = function()
        local tree_sitter = require("nvim-treesitter")
        local f = tree_sitter.statusline({
            indicator_size = 300,
            type_patterns = { 'class', 'function', 'method', 'if', 'for', 'else', 'object' },
            separator = ' 󰿟 ',
            -- transform_fn = function(line, node)
            --     print(vim.inspect(node))
            --     if node == tree_sitter.function_declaration then
            --         vim.print(string.format("%s", node))
            --     end
            --     return line
            -- end,
            allow_duplicates = false,
        })

        if f == nil then
            return ""
        end
        local context = string.format("%s", f)
        if context == "" then
            return ""
        end

        return "󱔁  " .. context
    end
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
            bg = "blue",
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
    -- component.tree_sitter,
    component.command,
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

return {
    'freddiehaddad/feline.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    opts = {
        components = components,
        theme = theme,
        vi_mode_colors = mode_theme,
    },
}
