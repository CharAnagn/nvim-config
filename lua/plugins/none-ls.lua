return {
  "nvimtools/none-ls.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "mason.nvim", -- ensures installed tools work with Mason
  },
  opts = function(_, opts)
    local nls = require("none-ls")

    opts.sources = vim.list_extend(opts.sources or {}, {
      -- ✅ Prettier formatter
      nls.builtins.formatting.prettier.with({
        filetypes = {
          "javascript",
          "typescript",
          "typescriptreact",
          "json",
          "css",
          "html",
          "yaml",
          "markdown",
          "tsx",
          "jsx",
        },
      }),

      -- ✅ ESLint diagnostics and autofix
      nls.builtins.diagnostics.eslint_d.with({
        condition = function(utils)
          return utils.root_has_file({ ".eslintrc.js", ".eslintrc.cjs", ".eslintrc.json" })
        end,
      }),
      nls.builtins.code_actions.eslint_d,
    })
  end,
}
