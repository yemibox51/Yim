return {
    {
        "mfussenegger/nvim-dap",
    },
    {
        "rcarriga/nvim-dap-ui",
        dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
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
            dap.adapters.delve = { -- Go
                type = 'server',
                port = '${port}',
                executable = {
                    command = 'dlv',
                    args = { 'dap', '-l', '127.0.0.1:${port}' },
                    -- add this if on windows, otherwise server won't open successfully
                    -- detached = false
                }
            }
            dap.adapters.codelldb = { -- C , C++, Rust
                type = 'server',
                port = "${port}",
                executable = {
                    -- Change this
                    command = '/Users/yemiagesin/codelldb/extension/adapter/codelldb',
                    args = { "--port", "${port}" },
                }
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
            dap.configurations.go = {
                {
                    type = "delve",
                    name = "Debug",
                    request = "launch",
                    program = "${file}"
                },
                {
                    type = "delve",
                    name = "Debug test", -- configuration for debugging test files
                    request = "launch",
                    mode = "test",
                    program = "${file}"
                },
                -- works with go.mod packages and sub packages
                {
                    type = "delve",
                    name = "Debug test (go.mod)",
                    request = "launch",
                    mode = "test",
                    program = "./${relativeFileDirname}"
                }
            }
            dap.configurations.cpp = {
                {
                    name = "Launch file",
                    type = "lldb",
                    request = "launch",
                    program = function()
                        return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
                    end,
                    cwd = '${workspaceFolder}',
                    stopOnEntry = false,
                },
            }
            dap.configurations.c = dap.configurations.cpp
            dap.configurations.rust = dap.configurations.cpp

            -- Keymaps from :help dap-mappings --
            vim.keymap.set('n', '<leader>dc', function() dap.continue() end)
            vim.keymap.set('n', '<leader>so', function() dap.step_over() end)
            vim.keymap.set('n', '<leader>si', function() dap.step_into() end)
            vim.keymap.set('n', '<leader>sO', function() dap.step_out() end)
            vim.keymap.set('n', '<Leader>td', function() dap.terminate() end)
            vim.keymap.set('n', '<Leader>rd', function() dap.restart() end)
            vim.keymap.set('n', '<Leader>b', function() dap.toggle_breakpoint() end)
            vim.keymap.set('n', '<Leader>cb', function() dap.clear_breakpoints() end)
            -- vim.keymap.set('n', '<Leader>b', function() dap.set_breakpoint() end)
            vim.keymap.set('n', '<Leader>lp',
                function() dap.set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
            vim.keymap.set('n', '<Leader>dr', function() dap.repl.open() end)
            vim.keymap.set('n', '<Leader>dl', function() dap.run_last() end)
            vim.keymap.set('n', '<Leader>gb', function() dap.run_to_cursor() end)
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
            local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python3"
            require("dap-python").setup(path)
            require('dap').configurations.python = {
                {
                    type = 'python',
                    request = 'launch',
                    name = "Launch file",
                    program = "${file}",
                    pythonPath = function()
                        return '/Users/yemi.agesin/.pyenv/shims/python3'
                    end,
                },
            }


            -- Keymaps from :help dap-mappings --
            vim.keymap.set({ 'n', 'v' }, '<Leader>dh', function()
                require('dap.ui.widgets').hover()
            end)
            vim.keymap.set({ 'n', 'v' }, '<Leader>dp', function()
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
}
