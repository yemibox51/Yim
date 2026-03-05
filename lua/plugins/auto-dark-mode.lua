return {
    {
        'f-person/auto-dark-mode.nvim',
        config = function()
            require('auto-dark-mode').setup({
                set_dark_mode = function()
                    vim.cmd.colorscheme "github_dark_tritanopia"
                end,
                set_light_mode = function()
                    vim.cmd.colorscheme "github_light_tritanopia"
                end,
            })
        end
    }
}
