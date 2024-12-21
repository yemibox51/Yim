return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup({})
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "pyright",
                }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            local lspconfig = require("lspconfig")

            -- Language Servers --
            lspconfig.lua_ls.setup({
                capabilities = capabilities,
            })
            lspconfig.pyright.setup({
                capabilities = capabilities,
            })
            lspconfig.ts_ls.setup({
                capabilities = capabilities,
            })

            -- Godot --
            local gdscript_config = {
                capabilities = capabilities,
                settings = {},
            }
            if vim.fn.has 'win32' == 1 then
                -- Requires nmap installed ('winget install nmap')
                gdscript_config['cmd'] = {'ncat', 'localhost', os.getenv 'GDScript_Port' or '6005'}
            end
            if lspconfig.gdscript then
                lspconfig.gdscript.setup(gdscript_config)
            end


            if lspconfig.gopls then
                lspconfig.gopls.setup({
                    capabilities = capabilities,
                })
            end

            -- Protobuf --
            if lspconfig.buf_ls then
                lspconfig.buf_ls.setup({
                    capabilities = capabilities
                })
            end

            -- Keymaps --
            vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('i', '<C-K>', vim.lsp.buf.signature_help, {})
            vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
            vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
            vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
            vim.keymap.set('n', 'gR', vim.lsp.buf.rename, {})
            vim.keymap.set('n', '<leader>q', vim.diagnostic.open_float, {})
            vim.keymap.set('n', '<leader>Q', function()
              vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.ERROR })
            end, {})
        end
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        -- This is your opts table
        config = function()
            require("telescope").setup {
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {
                        }
                    }
                }
            }
            require("telescope").load_extension("ui-select")
        end
    }
}
