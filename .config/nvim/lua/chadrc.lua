---@type ChadrcConfig
local M = {}

local utils = require("nvchad.stl.utils")
local sep_l = "█"
local sep_r = "█"

M.ui = {
    statusline = {
        separator_style = "block",
        modules = {
            mode = function()
                if not utils.is_activewin() then
                    return ""
                end

                local modes = utils.modes

                local m = vim.api.nvim_get_mode().mode

                local current_mode = "%#St_" .. modes[m][2] .. "Mode#  " .. modes[m][1]
                local mode_sep1 = "%#St_" .. modes[m][2] .. "ModeSep#" .. sep_r
                return current_mode .. mode_sep1
            end,
            cwd = function()
                local icon = "%#Pmenu# 󰉋"
                local name = vim.loop.cwd()
                name = " " .. (name:match "([^/\\]+)[/\\]*$" or name) .. " "
                return (vim.o.columns > 85 and (icon .. name)) or ""
            end,
            cursor = function()
                return "%#St_pos_sep#" .. sep_l .. "%#St_pos_icon# %p%% "
            end
        }
    },
    tabufline = {
        order = { "treeOffset", "buffers", "tabs" },
        lazyload = false
    },
}

M.base46 = {
    ---@diagnostic disable-next-line
    theme = "neodark",
    hl_override = {
        St_NormalMode = { bg = "green" },
        St_NormalModeSep = { fg = "green" },
        St_InsertMode = { bg = "blue" },
        St_InsertModeSep = { fg = "blue" },
        St_VisualMode = { bg = "purple" },
        St_VisualModeSep = { fg = "purple" }
    }
}

M.nvdash = {
    load_on_startup = true
}

return M

