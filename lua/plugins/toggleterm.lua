return {
    "akinsho/toggleterm.nvim",
    tag = '*', config = function()
        require("toggleterm").setup({
            size = 20,
            open_mapping = [[<c-\>]],
            direction = "float"
        })
    end
}
