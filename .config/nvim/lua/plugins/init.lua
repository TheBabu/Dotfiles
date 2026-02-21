return {
    {
        "stevearc/conform.nvim",
        opts = function()
            return require("configs.conform")
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            require("nvchad.configs.lspconfig").defaults()
            require("configs.lspconfig")
        end
    },
    {
        "CRAG666/code_runner.nvim",
        event = "VeryLazy",
        opts = function()
            return require("configs.crunner")
        end
    },
    {
        "williamboman/mason.nvim",
        opts = function()
            return require("configs.mason")
        end
    },
    {
        "nvim-treesitter/nvim-treesitter",
        opts = function()
            return require("configs.treesitter")
        end
    },
    {
        "nvim-telescope/telescope.nvim",
        opts = function()
            return require("configs.telescope")
        end
    },
    {
        "hrsh7th/nvim-cmp",
        opts = function()
            return require("configs.cmp")
        end
    },
    {
        "andweeb/presence.nvim",
        lazy = false,
        opts = function()
            return require("configs.presence")
        end
    },
    {
        "godlygeek/tabular",
        lazy = false
    },
    {
        "rcarriga/nvim-dap-ui",
        dependencies = {
            "mfussenegger/nvim-dap",
            "nvim-neotest/nvim-nio",
            "mfussenegger/nvim-dap-python"
        },
        config = true
    },
    {
        "mfussenegger/nvim-dap",
        config = function()
            require("configs.nvim-dap")
        end
    },
    {
        "nvimdev/hlsearch.nvim",
        config = true,
        lazy = false
    },
    {
        "smoka7/hop.nvim",
        config = true,
        lazy = false
    }
}

