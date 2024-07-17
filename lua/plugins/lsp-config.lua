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
					"tsserver",
					"pyright",
					"gopls",
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
			lspconfig.tsserver.setup({
                capabilities = capabilities,
            })

              -- Godot --
            if lspconfig.gdscript then
                lspconfig.gdscript.setup({
                capabilities = capabilities,
             })
            end
            lspconfig.gopls.setup({
                capabilities = capabilities,
            })

			-- Keymaps --
			vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
			vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
			vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, {})
			vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
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
