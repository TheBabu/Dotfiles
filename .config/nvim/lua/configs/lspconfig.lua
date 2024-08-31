local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local servers = { "html", "cssls", "clangd", "pylsp", "rust_analyzer" }

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup({
        on_attach = on_attach,
        on_init = on_init,
        capabilities = capabilities,
        settings = lsp == "pylsp" and {
            pylsp = {
                plugins = {
                    pycodestyle = {
                        enabled = false
                    }
                }
            }
        } or {}
    })
end

