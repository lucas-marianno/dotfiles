-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set(
  "n", -- Mode: Normal mode
  "<F2>", -- The key to press
  vim.lsp.buf.rename, -- The LSP function to call
  { desc = "LSP: Rename (F2)", silent = true } -- Options
)
