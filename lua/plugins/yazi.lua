return {
  "mikavilpas/yazi.nvim",
  event = "VeryLazy",
  dependencies = {
    { "nvim-lua/plenary.nvim", lazy = true },
  },
  keys = {
    { "<C-n>", "<cmd>Yazi cwd<cr>", desc = "Open yazi in working directory" },
    { "<C-S-n>", "<cmd>Yazi<cr>", desc = "Open yazi at current file" },
  },
  opts = {
    open_for_directories = false,
  },
}
