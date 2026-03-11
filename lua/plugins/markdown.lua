return {
    {
        'MeanderingProgrammer/render-markdown.nvim',
        dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
        ---@module 'render-markdown'
        ---@type render.md.UserConfig
        opts = {},
    },
    {
        'iamcco/markdown-preview.nvim',
        cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
        ft = { 'markdown' },
        build = function() vim.fn['mkdp#util#install']() end,
        -- Run this in Neovim in case it fails to build: call mkdp#util#install()
        init = function()
            vim.g.mkdp_auto_close = 1
            vim.g.mkdp_refresh_slow = 0
            -- vim.g.mkdp_theme = 'dark' -- Commented out for theme to match system
            vim.g.mkdp_filetypes = { 'markdown' }
        end,
        keys = {
            { '<leader>M', '<cmd>MarkdownPreviewToggle<cr>', ft = 'markdown', desc = 'Markdown Preview Toggle' },
        },
    },
}
