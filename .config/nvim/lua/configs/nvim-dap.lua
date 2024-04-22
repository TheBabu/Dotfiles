local dap = require("dap")

require("dap-python").setup("/usr/bin/python")

dap.configurations.python = {
    {
        name = "Launch file",
        type = "python",
        request = "launch",
        justMyCode = false,
        program = "${file}"
    }
}

dap.adapters.codelldb = {
    type = "server",
    port = "${port}",
    executable = {
        command = "/home/ariq/.local/share/nvim/mason/bin/codelldb",
        args = { "--port", "${port}" },
    }
}

dap.configurations.cpp = {
    {
        name = "Launch file",
        type = "codelldb",
        request = "launch",
        program = "${relativeFileDirname}/${fileBasenameNoExtension}",
        cwd = "${workspaceFolder}",
        stopOnEntry = false
    }
}

dap.configurations.c = dap.configurations.cpp

dap.configurations.rust = {
    {
        name = "Launch",
        type = "codelldb",
        request = "launch",
        program = function()
            return "${relativeFileDirname}/../target/debug/" .. vim.fn.input("Project name: ")
        end,
        cwd = "${workspaceFolder}",
        stopOnEntry = false
    },
}

dap.listeners.before.attach.dapui_config = function()
    require("dapui").open()
end
dap.listeners.before.launch.dapui_config = function()
    require("dapui").open()
end

