return {
  "rcarriga/nvim-dap-ui",
  dependencies = { "nvim-neotest/nvim-nio" },
  opts = {},
  config = function(_, opts)
    local dap = require("dap")
    local dapui = require("dapui")
    dapui.setup(opts)

    -- Open UI when debugging starts
    dap.listeners.after.event_initialized["dapui_config"] = function()
      dapui.open()
    end

    -- Comment out or remove these lines to prevent auto-close
    -- dap.listeners.before.event_terminated["dapui_config"] = function()
    --   dapui.close()
    -- end
    -- dap.listeners.before.event_exited["dapui_config"] = function()
    --   dapui.close()
    -- end
  end,
}
