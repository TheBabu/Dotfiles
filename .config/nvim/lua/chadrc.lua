---@type ChadrcConfig
local M = {}

M.ui = {
    ---@diagnostic disable-next-line
    theme = "neodark",
    statusline = {
        separator_style = "block"
    },
    tabufline = {
        order = { "treeOffset", "buffers", "tabs" }
    },
    nvdash = {
       load_on_startup = true
    }
}

return M

