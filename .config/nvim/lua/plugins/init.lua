return {
    {
        "stevearc/conform.nvim",
        config = function()
            require("configs.conform")
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
        opts = require("configs.crunner"),
        event = "VeryLazy"
    },
    {
        "williamboman/mason.nvim",
        opts = require("configs.mason")
    },
    {
        "nvim-treesitter/nvim-treesitter",
        opts = require("configs.treesitter")
    },
    {
        "nvim-telescope/telescope.nvim",
        opts = require("configs.telescope")
    },
    {
        "hrsh7th/nvim-cmp",
        opts = require("configs.cmp")
    },
    {
        "andweeb/presence.nvim",
        config = require("configs.presence"),
        lazy = false
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

