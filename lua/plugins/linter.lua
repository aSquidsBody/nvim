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
      },
      ignore_install = {
        "janet",
        "inko",
        "clj-kondo",
        "ruby"
      }
    }
  }
}
