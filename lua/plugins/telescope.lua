return {
  'nvim-telescope/telescope.nvim',
  tag = 'v0.1.9',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    {
      "<Leader>pf",
      function()
        local builtin = require("telescope.builtin")
        builtin.find_files()
      end,
      mode = { "n" },
      desc = "Find files"
    },
    {
      "<Leader>pg",
      function()
        local builtin = require("telescope.builtin")
        builtin.live_grep()
      end,
      mode = { "n" },
      desc = "Grep files"
    },
    {
      "<Leader>pg",
      function()
        local builtin = require("telescope.builtin")
        builtin.grep_string()
      end,
      mode = { "v" },
      desc = "Grep string under cursor"
    }
  }
}
