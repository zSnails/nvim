local os = require('os')
local M = {}

M.themes = {
    spring = nil,
    summer = nil,
    autumn = nil,
    winter = nil
}

M.seasons = {
    spring = "spring",
    summer = "summer",
    autumn = "autumn",
    winter = "winter"
}

local function getSeason()
    local today = os.date("*t")
    local day = today.yday

    -- TODO: refactor this piece of shit
    if (day >= 79) and (day < 172) then
        return "spring"
    elseif (day >= 172) and (day < 266) then
        return "summer"
    elseif (day >= 266) and (day < 355) then
        return "autumn"
    elseif (day >= 355) or (day < 79) then
        return "winter"
    end
end

function M.setDefaultTheme(theme)
    -- FIX: for some reason iterating through the
    -- table did not yield any reults whatsoever,
    -- also it didn't even iterate through it, my
    -- hipothesis is that it's due to all the values being
    -- nil

    M.themes.autumn = theme
    M.themes.spring = theme
    M.themes.summer = theme
    M.themes.winter = theme
end

function M.setTheme(season, theme)
    M.themes[season] = theme
end

function M.getTheme()
    return M.themes[getSeason()]
end

return M
