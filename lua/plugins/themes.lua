return { 
    {
        "catppuccin/nvim", 
        name = "catppuccin", 
        priority = 1000,
    },
    {
        'projekt0n/github-nvim-theme',
        name = 'github-theme',
        config = function()
            vim.cmd.colorscheme "github_dark_tritanopia"
        end
    }
}
