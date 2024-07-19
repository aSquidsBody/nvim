-- Search and replace in multiple files
return {
  "nvim-pack/nvim-spectre",
  build = flse,
  cmd = "Spectre",
  opts = { open_cmd = "noswapfile vnew" },
  -- stylua: ignore
  keys = {
    { "<leader>sr", function() require("spectre").open() end, desc = "Replace in Files (Spectre)" },
  },
}
