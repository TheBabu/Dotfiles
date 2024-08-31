require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map({ "n", "v", "i" }, "<A-space>", "<ESC>")

map({ "n", "v" }, "<A-a>", ":Tab /=><CR>", { desc = "Align Rust match operators" })
map({ "n", "v" }, "<A-s>", ":Tab /=<CR>", { desc = "Align equal signs" })
map({ "n", "v" }, "<A-d>", ":Telescope<CR>")
map({ "n", "v" }, "<A-f>", ":RunCode<CR>i", { desc = "Run code" })
map({ "n", "v" }, "<A-g>", require("dapui").toggle, { desc = "Toggle debugger" })
map({ "n", "v" }, "<A-j>", ":w<CR>", { desc = "File Save" })
map({ "n", "v" }, "<A-k>", function() require("nvchad.tabufline").prev() end, { desc = "Move NvChad buffer back" })
map({ "n", "v" }, "<A-l>", function() require("nvchad.tabufline").next() end, { desc = "Move NvChad buffer forward" })

map({ "n", "v" }, "<A-q>", ":qa<CR>", { desc = "Quit" })
map({ "n", "v" }, "<A-w>", function() require("nvchad.tabufline").close_buffer() end, { desc = "Close NvChad buffer" })
map({ "t" }, "<A-e>", "<C-\\><C-N>", { desc = "Exit Terminal Mode" })
map({ "n", "v" }, "<A-i>", function() require("nvchad.tabufline").move_buf(-1) end, { desc = "Move NvChad buffer back" })
map({ "n", "v" }, "<A-o>", function() require("nvchad.tabufline").move_buf(1) end, { desc = "Move NvChad buffer forward" })

map("n", "<A-c>", "gcc", { desc = "Comment Toggle", remap = true })
map("v", "<A-c>", "gc", { desc = "Comment Toggle", remap = true })

map("n", "<tab>", "")
map("n", "<S-tab>", "")
map("n", "<F5>", require("dap").continue, { desc = "Continue" })
map("n", "<F10>", require("dap").step_over, { desc = "Step over" })
map("n", "<F11>", require("dap").step_into, { desc = "Step into" })
map("n", "<F12>", require("dap").step_out, { desc = "Step out" })
map("n", "<leader>d", ":bd<CR>", { desc = "Delete buffer" })
map("n", "<leader>b", require("dap").toggle_breakpoint, { desc = "Toggle breakpoint" })
map("n", "<leader>j", ":HopPattern<CR>", { desc = "Hop Pattern" })

