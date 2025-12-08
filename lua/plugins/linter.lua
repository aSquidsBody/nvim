return {
  {
    "mfussenegger/nvim-lint"
  },
  {
    "rshkarin/mason-nvim-lint",
    dependencies = { "mason-org/mason.nvim" },
    opts = {
      automatic_installation = true,
      ensure_installed = {
        "cpplint",
      }
    }
  }
}
