return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    keywords = {
      AI = {
        icon = "🤖",
        color = "#06B6D4",
        alt = { "CLAUDE", "GEMINI", "CODEX", "COPILOT", "AGENT" },
      },
    },
  },
}
