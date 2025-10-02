-- Load Catppuccin with Mocha flavor
vim.g.catppuccin_flavour = "mocha" -- options: latte, frappe, macchiato, mocha
require("catppuccin").setup()
vim.cmd([[colorscheme catppuccin]])
