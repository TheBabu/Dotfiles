return {
    preselect = require("cmp").PreselectMode.None,
    completion = { completeopt = "menu, menuone, noselect" },
    mapping = require("cmp").mapping.preset.insert({
        ["<Down>"] = require("cmp").mapping.select_next_item(),
        ["<Up>"] = require("cmp").mapping.select_prev_item(),
    })
}

