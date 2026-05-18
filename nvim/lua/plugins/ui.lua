return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      -- 1. Helper to check the physical LED state on Wayland/Linux
      local function is_caps_on()
        -- We use a glob (*) to find the caps lock LED regardless of the input number
        local f = io.popen("cat /sys/class/leds/*capslock/brightness 2>/dev/null")
        if not f then
          return false
        end
        local status = f:read("*all")
        f:close()
        return status:match("1") ~= nil
      end

      -- 2. Add a high-visibility component to the statusline
      table.insert(opts.sections.lualine_x, {
        function()
          return "󰬈 CAPSLOCK"
        end,
        cond = is_caps_on, -- Only shows if the function returns true
        color = { fg = "#ff0000", gui = "bold,italic" }, -- Bright red accent
        separator = { left = "", right = "" }, -- Optional: adds a pill shape
      })

      -- 3. Optional: Make the mode section turn red as well
      local original_color = opts.options.theme
      -- This is a bit more advanced, but it ensures the 'INSERT' or 'NORMAL'
      -- block also highlights if you want maximum visibility.
    end,
  },
}
