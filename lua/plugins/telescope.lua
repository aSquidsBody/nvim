local telescope = require("telescope.builtin")
return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<leader>pf",
        function()
          telescope.find_files()
        end,
        "Find files",
      },
      {
        "<leader>ps",
        function()
          telescope.grep_string({ search = vim.fn.input("Grep > ") })
        end,
        "Grep string in files",
      },
      {
        "<C-p>",
        function()
          telescope.git_files()
        end,
        "Git files",
      },
    },
    -- change some options
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    },
  },
}
