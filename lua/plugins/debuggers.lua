return {
    {
        "mfussenegger/nvim-dap",
    },
    {
        "rcarriga/nvim-dap-ui",
        dependencies = "mfussenegger/nvim-dap",
        config = function()
            local dap = require("dap")
            local dapui = require("dapui")
            dapui.setup()
            dap.listeners.after.event_initialized["dapui_config"] = function()
                dapui.open()
            end
            dap.listeners.after.event_terminated["dapui_config"] = function()
                dapui.close()
            end
            dap.listeners.after.event_exited["dapui_config"] = function()
                dapui.close()
            end

            -- Adapters --
            dap.adapters.godot = {
                type = 'server',
                host = '127.0.0.1',
                port = 6006,
            }

            -- Configurations --
            dap.configurations.gdscript = {
              {
                type = "godot",
                request = "launch",
                name = "Launch scene",
                project = "${workspaceFolder}",
              }
            }

            -- Keymaps from :help dap-mappings --
            vim.keymap.set('n', '<F5>', function() dap.continue() end)
            vim.keymap.set('n', '<F10>', function() dap.step_over() end)
            vim.keymap.set('n', '<F11>', function() dap.step_into() end)
            vim.keymap.set('n', '<F12>', function() dap.step_out() end)
            vim.keymap.set('n', '<Leader>t', function() dap.terminate() end)
            vim.keymap.set('n', '<Leader>r', function() dap.restart() end)
            vim.keymap.set('n', '<F9>', function() dap.toggle_breakpoint() end)
            vim.keymap.set('n', '<Leader>b', function() dap.set_breakpoint() end)
            vim.keymap.set('n', '<Leader>lp', function() dap.set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
            vim.keymap.set('n', '<Leader>dr', function() dap.repl.open() end)
            vim.keymap.set('n', '<Leader>dl', function() dap.run_last() end)
            vim.keymap.set({'n', 'v'}, '<Leader>dh', function()
              require('dap.ui.widgets').hover()
            end)
            vim.keymap.set({'n', 'v'}, '<Leader>dp', function()
              require('dap.ui.widgets').preview()
            end)
            vim.keymap.set('n', '<Leader>df', function()
              local widgets = require('dap.ui.widgets')
              widgets.centered_float(widgets.frames)
            end)
            vim.keymap.set('n', '<Leader>ds', function()
              local widgets = require('dap.ui.widgets')
              widgets.centered_float(widgets.scopes)
            end)

        end,
    },
    {
        "mfussenegger/nvim-dap-python",
        ft = "python",
        dependencies = {
            "mfussenegger/nvim-dap",
            "rcarriga/nvim-dap-ui",
        },
        config = function()
            local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
            require("dap-python").setup(path)
        end,
    }
}
