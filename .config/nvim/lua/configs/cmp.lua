return {
    preselect = require("cmp").PreselectMode.None,
    completion = { completeopt = "menu, menuone, noselect" },
    mapping = require("cmp").mapping.preset.insert({
        ["<Down>"] = require("cmp").mapping.select_next_item(),
        ["<Up>"] = require("cmp").mapping.select_prev_item(),
        ["<CR>"] = require("cmp").mapping.confirm({
            behavior = require("cmp").ConfirmBehavior.Insert,
            select = false
        }),
    }),
    sources = {
        {
            name = "nvim_lsp",
            entry_filter = function(entry)
                return require("cmp").lsp.CompletionItemKind.Snippet ~= entry:get_kind()
            end
        },
    },
    window = {
        completion = { border = "rounded" },
        documentation = { border = "rounded" },
    }
}

