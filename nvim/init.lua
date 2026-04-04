-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("vscode").setup({
  -- Override colors ->https://github.com/Mofiqul/vscode.nvim/blob/main/lua/vscode/colors.lua
  color_overrides = {
    vscBack = "#000000",
    pvscTabCurrent = "#000000",
    vscPopupBack = "#000000",
    -- vscPopupFront = "#FF0000",
  },
})

require("vscode").load()

require("lazydev").setup({
  library = { "nvim-dap-ui" },
})

require("maven").setup({
  executable = "./mvnw", -- `mvn` should be in your `PATH`, or the path to the maven exectable, for example `./mvnw`
  cwd = nil, -- work directory, default to `vim.fn.getcwd()`
  settings = nil, -- specify the settings file or use the default settings
  commands = { -- add custom goals to the command list
    { cmd = { "clean", "compile" }, desc = "clean then compile" },
  },
})

-- vim.lsp.enable("dartls")
vim.g.lazyvim_python_lsp = "pyright"

-- use PowerShell Core as terminal when executing on windows environments
if vim.fn.has("win64") == 1 or vim.fn.has("win32") == 1 then
  vim.o.shell = vim.fn.expand("$USERPROFILE") .. "/scoop/apps/pwsh/current/pwsh.exe"
end
