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

-- Example: clear search highlights
map("n", "<leader>h", ":nohlsearch<CR>", opts)

-- Example: quick save
map("n", "<leader>w", ":w<CR>", opts)

-- Quick find and replace for current word or manual input
vim.keymap.set(
  "n",
  "<leader>r",
  [[:%s/\<<C-r><C-w>\>//gI<Left><Left><Left>]],
  { desc = "Replace all occurrences in file" }
)

-- Project-wide search & replace using Telescope live grep
vim.keymap.set("n", "<leader>R", function()
  require("telescope").extensions.live_grep_args.live_grep_args()
end, { desc = "Search text across project" })
