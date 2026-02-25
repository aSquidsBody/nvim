return {
  "nvim-telescope/telescope.nvim",
  tag = "v0.1.9",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    {
      "<Leader>pf",
      function()
        local builtin = require("telescope.builtin")
        builtin.find_files(require("telescope.themes").get_dropdown({ previewer = false }))
      end,
      mode = { "n" },
      desc = "Find files",
    },
    {
      "<Leader>pn",
      function()
        local builtin = require("telescope.builtin")
        builtin.find_files({
          cwd = vim.fn.stdpath("config"),
          border = true,
          borderchars = {
            preview = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
            prompt = { "─", "│", " ", "│", "╭", "╮", "│", "│" },
            results = { "─", "│", "─", "│", "├", "┤", "╯", "╰" },
          },
          layout_config = {
            preview_cutoff = 1,
          },
          layout_strategy = "center",
          previewer = false,
          results_title = false,
          sorting_strategy = "ascending",
          theme = "dropdown",
        })
      end,
      mode = { "n" },
      desc = "Find files in nvim directory",
    },
    {
      "<Leader>pg",
      function()
        local builtin = require("telescope.builtin")
        builtin.live_grep()
      end,
      mode = { "n" },
      desc = "Grep files",
    },
    {
      "<Leader>pg",
      function()
        local builtin = require("telescope.builtin")
        builtin.grep_string()
      end,
      mode = { "v" },
      desc = "Grep string under cursor",
    },
  },
}
