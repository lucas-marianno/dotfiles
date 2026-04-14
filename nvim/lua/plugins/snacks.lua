return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        files = {
          hidden = false,
          ignored = false,
        },
      },
      win = {
        input = {
          keys = {
            -- H (Shift + h) to toggle hidden files in Normal mode
            ["H"] = { "toggle_hidden", mode = "n" },
            -- I (Shift + i) to toggle ignored files in Normal mode
            ["I"] = { "toggle_ignored", mode = "n" },
          },
        },
      },
    },
  },
}
