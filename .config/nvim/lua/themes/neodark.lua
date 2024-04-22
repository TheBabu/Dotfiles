local M = {}

M.base_30 = {
    white = "#d0d0d0",
    black = "#282828", -- usually your theme bg
    darker_black = "#191919", -- 6% darker than black
    black2 = "#373737", -- 6% lighter than black
    one_bg = "#424242", -- 10% lighter than black
    one_bg2 = "#515151", -- 6% lighter than one_bg2
    one_bg3 = "#616161", -- 6% lighter than one_bg3
    grey = "#8e8e8e", -- 40% lighter than black (the % here depends so choose the perfect grey!)
    grey_fg = "#8a8a8a", -- 10% lighter than grey
    grey_fg2 = "#9b9b9b", -- 5% lighter than grey
    light_grey = "#9b9b9b",
    red = "#dc657d",
    baby_pink = "#f4c2c2",
    pink = "#dc94a2",
    line = "#4e4e4e", -- 15% lighter than black
    green = "#84b97c",
    vibrant_green = "#80ff00",
    nord_blue = "#639ee4",
    blue = "#639ee4",
    seablue = "#006994",
    yellow = "#d4b261",
    sun = "#e8c26c", -- 8% lighter than yellow
    purple = "#b888e2",
    dark_purple = "#b888e2",
    teal = "#4bb1a7",
    orange = "#e18254",
    cyan = "#4eb4fa",
    statusline_bg = "#333333",
    lightbg = "#333333",
    pmenu_bg = "#a8a8a8",
    folder_bg = "#a8a8a8"
}

M.base_16 = {
    base00 = "#282828",
    base01 = "#393f45",
    base02 = "#565e65",
    base03 = "#747c84",
    base04 = "#adb3ba",
    base05 = "#c7ccd1",
    base06 = "#dfe2e5",
    base07 = "#f3f4f5",
    base08 = "#bcbcbc",
    base09 = "#dc657d",
    base0A = "#87afd7",
    base0B = "#e18254",
    base0C = "#bcbcbc",
    base0D = "#b888e2",
    base0E = "#84b97c",
    base0F = "#d0d0d0"
}

M.polish_hl = {
    defaults = {
        MatchWord = { fg = M.base_16.base00, bg = M.base_30.cyan, bold = true },
        DapUIScope = { fg = M.base_30.green },
        DapUIDecoration = { fg = M.base_16.base0C },
        DapUIBreakpointsPath = { fg = M.base_30.green },
        DapUIStoppedThread = { fg = M.base_30.green },
        DapUILineNumber = { fg = M.base_16.base0C },
        DapUIBreakpointsCurrentLine = { fg = M.base_16.base0A, bold = true },
        DapUIModifiedValue = { fg = M.base_30.red, bold = true }
    },
    treesitter = {
        ["@keyword.repeat"] = { fg = M.base_30.green },
        ["@keyword.conditional"] = { fg = M.base_30.green },
        ["@keyword.directive"] = { fg = M.base_16.base04 },
        ["@type.builtin.cpp"] = { fg = M.base_30.yellow },
        ["@type.builtin.rust"] = { fg = M.base_30.yellow },
        ["@function.cpp"] = { fg = M.base_16.base0A },
        ["@string.escape"] = { fg = M.base_30.baby_pink },
        ["@lsp.type.namespace.rust"] = { fg = M.base_30.purple },
        ["@keyword.import.rust"] = { fg = M.base_30.green },
        ["@keyword.modifier"] = { fg = M.base_30.teal },
        ["@keyword.exception"] = { fg = M.base_30.red }
    },
}

M.type = "dark"

M = require("base46").override_theme(M, "neodark")

return M

