local cmp = require("cmp")

return {
    preselect = cmp.PreselectMode.None,
    completion = { completeopt = "menu, menuone, noselect" },
    mapping = cmp.mapping.preset.insert({
        ["<Down>"] = cmp.mapping.select_next_item(),
        ["<Up>"] = cmp.mapping.select_prev_item(),
        ["<CR>"] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Insert,
            select = false
        }),
    }),
    sources = {
        {
            name = "nvim_lsp",
            entry_filter = function(entry)
                return cmp.lsp.CompletionItemKind.Snippet ~= entry:get_kind()
            end
        },
    },
    window = {
        completion = { border = "rounded" },
        documentation = { border = "rounded" },
    }
}

