return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Use BasedPyright for type checking and Intellisense
        basedpyright = {
          settings = {
            basedpyright = {
              analysis = {
                -- Use Ruff for diagnostics/linting instead
                ignore = { "*" },
                typeCheckingMode = "standard",
              },
            },
          },
        },
        -- Use Ruff for everything else (Linting, Formatting, Import Sorting)
        ruff = {
          keys = {
            {
              "<leader>co",
              function()
                vim.lsp.buf.code_action({
                  apply = true,
                  context = {
                    only = { "source.organizeImports.ruff" },
                    diagnostics = {},
                  },
                })
              end,
              desc = "Organize Imports",
            },
          },
        },
      },
    },
  },
  -- Ensure Mason installs the right tools automatically
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "basedpyright",
        "ruff",
        "debugpy",
      },
    },
  },
}
