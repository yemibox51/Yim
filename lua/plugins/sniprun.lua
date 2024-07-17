return {
    "michaelb/sniprun",
    branch = "master",

    build = "sh install.sh",
    -- do 'sh install.sh 1' if you want to force compile locally
    -- (instead of fetching a binary from the github release). Requires Rust >= 1.65

    config = function()
        require("sniprun").setup({
            display = {
                -- "Classic",
                -- "VirtualText",
                -- "TempFloatingWindow"
                -- "LongTempFloatingWindow"
                "Terminal",
                -- "NvimNotify" -- Requires nvim-notify
                -- Suffixes --
                "VirtualTextOk"
                -- "VirtualTextErr"

            },
            interpreter_options = {
                Go_original = {
                    compiler = "go"
                }
            }
        })
        vim.api.nvim_set_keymap('v', 'f', '<Plug>SnipRun', { silent = true })
        vim.api.nvim_set_keymap('n', '<leader>f', '<Plug>SnipRunOperator', { silent = true })
        vim.api.nvim_set_keymap('n', '<leader>ff', '<Plug>SnipRun', { silent = true })
    end,
}
