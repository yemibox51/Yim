return {
    {
      "folke/sidekick.nvim",
      dependencies = {
        -- Recommended for `ask()` and `select()`.
        -- Required for default `toggle()` implementation.
        { "folke/snacks.nvim", opts = { input = {}, picker = {}, terminal = {} } },
      },
      opts = {
        -- add any options here
        cli = {
            win = {
               layout = "float",
            },
        },
      },
      keys = {
        {
          "<A-.>",
          function() require("sidekick.cli").toggle() end,
          mode = { "n", "t" },
          desc = "Sidekick Toggle CLI",
        },
        {
          -- "<leader>as",
          "<A-,>",
          function() require("sidekick.cli").select({ filter = { installed = true } }) end,
          -- Or to select only installed tools:
          -- require("sidekick.cli").select({ filter = { installed = true } })
          mode = { "n", "t" },
          desc = "Select CLI",
        },
        {
          "<leader>ad",
          function() require("sidekick.cli").close() end,
          desc = "Detach a CLI Session",
        },
        {
          "<leader>at",
          function() require("sidekick.cli").send({ msg = "{this}" }) end,
          mode = { "x", "n" },
          desc = "Send This",
        },
        {
          "<leader>af",
          function() require("sidekick.cli").send({ msg = "{file}" }) end,
          desc = "Send File",
        },
        {
          "<leader>av",
          function() require("sidekick.cli").send({ msg = "{selection}" }) end,
          mode = { "x" },
          desc = "Send Visual Selection",
        },
        {
          "<leader>ap",
          function() require("sidekick.cli").prompt() end,
          mode = { "n", "x" },
          desc = "Sidekick Select Prompt",
        },
      },
    },
    { -- GitHub Copilot code completion
      "github/copilot.vim",
      config = function()
        vim.keymap.set("i", "<A-f>", 'copilot#Accept("\\<CR>")', { expr = true, noremap = true })
        vim.keymap.set("i", "<A-e>", '<Plug>(copilot-next)', { noremap = true })
        vim.keymap.set("i", "<A-c>", '<Plug>(copilot-dismiss)', { noremap = true })
      end,
    }
}
