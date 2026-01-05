return  {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = true,
  keys = {
    { "<Leader>t", "<CMD>ToggleTerm<CR>", desc = "Opens a terminal", mode = { "n", "v" } },
    { "<Esc><Esc>", "<C-\\><C-n>", desc = "Exits terminal mode", mode = { "t" } },
  }
}
