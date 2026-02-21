require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "clangd", "pylsp", "rust_analyzer" }

vim.lsp.config("pylsp", {
    settings = {
        pylsp = {
            plugins = {
                pycodestyle = {
                    enabled = false
                }
            }
        }
    }
})

vim.lsp.enable(servers)

