return {
  "mfussenegger/nvim-dap",
  optional = true,
  opts = function()
    -- Simple configuration to attach to remote java debug process
    -- Taken directly from https://github.com/mfussenegger/nvim-dap/wiki/Java
    DAP = require("dap")
    DAP.configurations.java = {
      {
        type = "java",
        request = "attach",
        name = "Debug (Attach) - Remote",
        hostName = "127.0.0.1",
        port = 5005,
      },
    }
  end,
  dependencies = {
    {
      "mason-org/mason.nvim",
      "rcarriga/nvim-dap-ui",
      "nvim-neotest/nvim-nio",
      opts = { ensure_installed = { "java-debug-adapter", "java-test" } },
    },
  },
  keys = {
    { "<F5>", "<leader>dc", desc = "Continue", remap = true },
    { "<F17>", "<leader>dt", desc = "Terminate", remap = true }, -- Shift+F5
      -- stylua: ignore
    { "<F29>", function() require("dap").restart_frame() end, desc = "Restart frame", remap = true }, -- Ctrl+F5
    { "<F9>", "<leader>db", desc = "Toggle breakpoint", remap = true },
    { "<F10>", "<leader>dO", desc = "Step over", remap = true },
    { "<F11>", "<leader>di", desc = "Step into", remap = true },
    { "<F23>", "<leader>do", desc = "Step out", remap = true }, -- shift+F11
    { "<F12>", "<leader>du", desc = "Toggle Dap UI", remap = true },
  },
}
