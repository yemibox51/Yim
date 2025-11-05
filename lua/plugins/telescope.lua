return {
	{
    'nvim-telescope/telescope.nvim',
		tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
		config = function()
            require("telescope").setup {
                pickers = {
                    find_files = {
                      hidden = true,
                    }
                },
            }
			local builtin = require("telescope.builtin")
			vim.keymap.set('n', '<C-p>', builtin.find_files, {})
			vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
			vim.keymap.set('n', '<leader>o', builtin.lsp_document_symbols, {})
            vim.keymap.set('n', '<leader>O', function() builtin.lsp_document_symbols({ symbols = { 'function' } }) end, {})
			vim.keymap.set('n', '<leader>m', builtin.marks, {})
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
