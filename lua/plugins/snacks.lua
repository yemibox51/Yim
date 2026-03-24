return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    scratch = { enabled = true },
  },
  keys = {
      { "<leader>ss",  function() Snacks.scratch() end, desc = "Toggle Scratch Buffer" },
      { "<leader>sS",  function() Snacks.scratch.select() end, desc = "Select Scratch Buffer" },
  }
}
