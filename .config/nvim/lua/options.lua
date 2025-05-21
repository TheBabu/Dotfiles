require("nvchad.options")

local o = vim.o
o.guicursor = "n-v-i-c:block"
o.tabstop = 4
o.shiftwidth = 4

local opt = vim.opt
opt.whichwrap:remove("<>[]hl")

local wo = vim.wo
wo.wrap = false

local fn = vim.fn
fn.sign_define("DapBreakpoint", { text = "", texthl = "Boolean" })
fn.sign_define("DapStopped", { text = "󰐊" })

local cmd = vim.cmd
cmd("aunmenu PopUp.How-to\\ disable\\ mouse")
cmd("aunmenu PopUp.-1-")

local ibl_hooks = require("ibl.hooks")
ibl_hooks.clear_all()

vim.hl = vim.highlight

