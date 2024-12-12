return {
    "nvim-neorg/neorg",
    lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    version = "*", -- Pin Neorg to the latest stable release
	dependencies = {
        "nvim-neorg/lua-utils.nvim",
        "pysan3/pathlib.nvim",
    },
    config = function()
        require("neorg").setup({
            load = {
                ["core.defaults"] = {},
                ["core.concealer"] = {},
            }
        })
    end,
}
