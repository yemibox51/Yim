return {
    "esmuellert/codediff.nvim",
    cmd = "CodeDiff",
    keys = {
        { '<leader>cd', '<cmd>CodeDiff<cr>', desc = 'CodeDiff' },
    },
    opts = {
        diff = {
            layout = "inline" -- Press t to toggle
        }
    },
}
