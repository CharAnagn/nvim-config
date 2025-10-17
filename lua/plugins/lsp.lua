return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        vtsls = {}, -- handles JS, TS, JSX, TSX
        eslint = {},
        html = {},
        cssls = {},
        pyright = {},
        jsonls = {},
        lua_ls = {},
      },
    },
  },
}
