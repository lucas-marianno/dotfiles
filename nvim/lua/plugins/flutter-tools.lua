return {
  {
    "akinsho/flutter-tools.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional for vim.ui.select
    },
    config = function()
      require("flutter-tools").setup({
        ft = "dart",
        widget_guides = { enabled = true },
        dev_log = { enabled = true, open_cmd = "tabedit" },
        closing_tags = { enabled = true, highlight = "Comment", prefix = "// " },
      })
    end,
  },
}
