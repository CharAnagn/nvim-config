-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Shorthand for setting keymaps
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Center cursor when moving half-page up/down
map("n", "<C-d>", "<C-d>zz", opts)
map("n", "<C-u>", "<C-u>zz", opts)

-- Center cursor when navigating search results
map("n", "n", "nzzzv", opts)
map("n", "N", "Nzzzv", opts)

-- Clear search highlights (leader-nh to avoid conflicting with LazyVim's Hunks menu)
map("n", "<leader>nh", ":nohlsearch<CR>", { noremap = true, silent = true, desc = "Clear search highlights" })

-- Quick save + format (autoformat triggers on save)
map("n", "<leader>ww", ":w<CR>", { noremap = true, silent = true, desc = "Save and format" })

-- Quick find and replace for current word or manual input
vim.keymap.set(
  "n",
  "<leader>r",
  [[:%s/\<<C-r><C-w>\>//gI<Left><Left><Left>]],
  { desc = "Replace all occurrences in file" }
)

