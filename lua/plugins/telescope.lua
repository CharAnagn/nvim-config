return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-file-browser.nvim",
      "nvim-telescope/telescope-live-grep-args.nvim",
    },
    keys = {
      {
        "<leader>sB",
        ":Telescope file_browser path=%:p:h=%:p:h<cr>",
        desc = "Browse files",
      },
      {
        "<leader>R",
        function()
          require("telescope").extensions.live_grep_args.live_grep_args()
        end,
        desc = "Search text across project",
      },
    },
    opts = function(_, opts)
      local telescope = require("telescope")
      telescope.load_extension("file_browser")
      telescope.load_extension("live_grep_args")
    end,
  },
}
