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
      "<Leader>df",
      function()
        local builtin = require("telescope.builtin")
        local opts = require("telescope.themes").get_dropdown({ previewer = false })
        opts.cwd = vim.fn.stdpath("config")
        opts.prompt_title = "Dataproc API - Find Files"
        builtin.find_files(opts)
      end,
      mode = { "n" },
      desc = "Find files in Dataproc API"
    },
    {
      "<Leader>nf",
      function()
        local builtin = require("telescope.builtin")
        local opts = require("telescope.themes").get_dropdown({ previewer = false })
        opts.cwd = vim.fn.stdpath("config")
        opts.prompt_title = "Neovim Config - Find Files"
        builtin.find_files(opts)
      end,
      mode = { "n" },
      desc = "Find files in neovim config"
    },
    {
      "<Leader>df",
      function()
        local builtin = require("telescope.builtin")
        local opts = require("telescope.themes").get_dropdown({ previewer = false })
        opts.cwd = "/Users/jsjoberg/java/dataproc-api"
        opts.prompt_title = "Dataproc API - Find Files"
        builtin.find_files(opts)
      end,
      mode = { "n" },
      desc = "Find files in neovim config"
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
