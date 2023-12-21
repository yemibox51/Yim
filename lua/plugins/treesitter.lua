return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = {"lua","javascript","swift","cpp","go","python","c","html","java", "c_sharp"},
			highlight = { enable = true },
			indent = { enable = true },
		})
	end
}
